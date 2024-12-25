from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
import pyspark.sql as sql
from pyspark.sql.functions import *
from pyspark.sql.types import *
from collections import defaultdict
from pyspark.sql import functions as F

NUMBER_PRECISION = 2

def addSampleLabel(ratingSamples):
    ratingSamples.show(5, truncate=False)
    ratingSamples.printSchema()
    sampleCount = ratingSamples.count()
    ratingSamples.groupBy('rating').count().orderBy('rating').withColumn('percentage',
                                                                         F.col('count') / sampleCount).show()
    ratingSamples = ratingSamples.withColumn('label', when(F.col('rating') >= 3.5, 1).otherwise(0))
    return ratingSamples

def addDirectorFeatures(directorSamples, ratingSamplesWithLabel):
    samplesWithDirectors1 = ratingSamplesWithLabel.join(directorSamples, on=['directorId'], how='left')
    samplesWithDirectors2 = samplesWithDirectors1.withColumn('directorName', F.col('directorName')) \
        .withColumn('birthDate', F.col('birthDate')) \
        .drop('directorName')
    samplesWithDirectors3 = samplesWithDirectors2.withColumn('directorJobTitle1', split(F.col('jobTitle'), "\\|")[0]) \
        .withColumn('directorJobTitle2', split(F.col('jobTitle'), "\\|")[1]) \
        .withColumn('directorJobTitle3', split(F.col('jobTitle'), "\\|")[2])
    directorRatingFeatures = samplesWithDirectors3.groupBy('directorId').agg(F.count(F.lit(1)).alias('directorRatingCount'),
                                                                             format_number(F.avg(F.col('rating')), NUMBER_PRECISION).alias('directorAvgRating'),
                                                                             F.stddev(F.col('rating')).alias('directorRatingStddev')).fillna(0) \
        .withColumn('directorRatingStddev', format_number(F.col('directorRatingStddev'), NUMBER_PRECISION))
    samplesWithDirectors4 = samplesWithDirectors3.join(directorRatingFeatures, on=['directorId'], how='left')
    samplesWithDirectors4.printSchema()
    samplesWithDirectors4.show(5, truncate=False)
    return samplesWithDirectors4

def extractJobTitles(jobTitles_list):
    '''
    传入一个格式如 ["Director|Producer|Writer", "Director|Producer|Writer"] 的列表
    按每个职业计数，返回按降序排列的职业列表
    '''
    jobTitles = defaultdict(int)
    for jobTitle in jobTitles_list:
        for title in jobTitle.split('|'):
            jobTitles[title] += 1
    sortedJobTitles = sorted(jobTitles.items(), key=lambda x: x[1], reverse=True)
    return [x[0] for x in sortedJobTitles]

def addUserFeatures(samplesWithDirectorFeatures):
    extractJobTitlesUdf = udf(lambda x: extractJobTitles(x), ArrayType(StringType()))
    samplesWithUserFeatures = samplesWithDirectorFeatures \
        .withColumn('userPositiveHistory', F.collect_list(when(F.col('label') == 1, F.col('directorId')).otherwise(None)).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1))) \
        .withColumn('userPositiveHistory', reverse(F.col('userPositiveHistory'))) \
        .withColumn('userRatedDirector1', F.col('userPositiveHistory')[0]) \
        .withColumn('userRatedDirector2', F.col('userPositiveHistory')[1]) \
        .withColumn('userRatedDirector3', F.col('userPositiveHistory')[2]) \
        .withColumn('userRatedDirector4', F.col('userPositiveHistory')[3]) \
        .withColumn('userRatedDirector5', F.col('userPositiveHistory')[4]) \
        .withColumn('userRatingCount', F.count(F.lit(1)).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1))) \
        .withColumn('userAvgBirthDate', format_number(F.avg(F.col('birthDate')).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)), NUMBER_PRECISION)) \
        .withColumn('userBirthDateStddev', format_number(F.stddev(F.col('birthDate')).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)), NUMBER_PRECISION)) \
        .withColumn('userAvgRating', format_number(F.avg(F.col('rating')).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)), NUMBER_PRECISION)) \
        .withColumn('userRatingStddev', format_number(F.stddev(F.col('rating')).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)), NUMBER_PRECISION)) \
        .withColumn('userJobTitles', extractJobTitlesUdf(F.collect_list(when(F.col('label') == 1, F.col('jobTitle')).otherwise(None)).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1)))) \
        .withColumn('userJobTitle1', F.col('userJobTitles')[0]) \
        .withColumn('userJobTitle2', F.col('userJobTitles')[1]) \
        .withColumn('userJobTitle3', F.col('userJobTitles')[2]) \
        .withColumn('userJobTitle4', F.col('userJobTitles')[3]) \
        .withColumn('userJobTitle5', F.col('userJobTitles')[4]) \
        .drop('jobTitle', 'userJobTitles', 'userPositiveHistory') \
        .filter(F.col('userRatingCount') > 1)
    samplesWithUserFeatures.printSchema()
    samplesWithUserFeatures.show(10)
    samplesWithUserFeatures.filter(samplesWithDirectorFeatures['userId'] == 1).orderBy(F.col('timestamp').asc()).show(truncate=False)
    return samplesWithUserFeatures

def splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path):
    smallSamples = samplesWithUserFeatures.sample(0.1)
    trainingSamples, testSamples = smallSamples.randomSplit([0.8, 0.2])
    trainingSavePath = file_path + '/trainingSamplesDirector'
    testSavePath = file_path + '/testSamplesDirector'
    trainingSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(trainingSavePath)
    testSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(testSavePath)

def splitAndSaveTrainingTestSamplesByTimeStamp(samplesWithUserFeatures, file_path):
    smallSamples = samplesWithUserFeatures.sample(0.1)
    quantile = smallSamples.stat.approxQuantile('timestamp', [0.8], 0.05)
    splitTimestamp = quantile[0]
    trainingSamples = smallSamples.filter(F.col('timestamp') <= splitTimestamp)
    testSamples = smallSamples.filter(F.col('timestamp') > splitTimestamp)
    trainingSavePath = file_path + '/trainingSamplesDirector'
    testSavePath = file_path + '/testSamplesDirector'
    trainingSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(trainingSavePath)
    testSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(testSavePath)

if __name__ == '__main__':
    conf = SparkConf().setAppName('featureEngineeringDirector').setMaster('local')
    spark = SparkSession.builder.config(conf=conf).getOrCreate()
    file_path = 'file:///home/xe/Documents/idea/SparrowRecSys/src/main/resources'
    directorResourcesPath = file_path + "/webroot/sampledata/directors.csv"
    ratingsResourcesPath = file_path + "/webroot/sampledata/director_ratings.csv"
    directorSamples = spark.read.format('csv').option('header', 'true').load(directorResourcesPath)
    ratingSamples = spark.read.format('csv').option('header', 'true').load(ratingsResourcesPath)
    ratingSamplesWithLabel = addSampleLabel(ratingSamples)
    ratingSamplesWithLabel.show(10, truncate=False)
    samplesWithDirectorFeatures = addDirectorFeatures(directorSamples, ratingSamplesWithLabel)
    samplesWithUserFeatures = addUserFeatures(samplesWithDirectorFeatures)
    # 保存样本为 csv 格式
    splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path + "/webroot/sampledata")
    # splitAndSaveTrainingTestSamplesByTimeStamp(samplesWithUserFeatures, file_path + "/webroot/sampledata")
