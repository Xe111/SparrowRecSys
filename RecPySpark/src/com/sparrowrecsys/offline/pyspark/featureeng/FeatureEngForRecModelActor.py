from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
import pyspark.sql as sql
from pyspark.sql.functions import *
from pyspark.sql.types import *
from collections import defaultdict
from pyspark.sql import functions as F

NUMBER_PRECISION = 2 # 保留两位小数

def addSampleLabel(ratingSamples):
    ratingSamples.show(5, truncate=False)
    ratingSamples.printSchema()
    sampleCount = ratingSamples.count()
    ratingSamples.groupBy('rating').count().orderBy('rating').withColumn('percentage', F.col('count') / sampleCount).show()
    ratingSamples = ratingSamples.withColumn('label', when(F.col('rating') >= 3.5, 1).otherwise(0))
    return ratingSamples

def addActorFeatures(actorSamples, ratingSamplesWithLabel):
    samplesWithActors1 = ratingSamplesWithLabel.join(actorSamples, on=['actorId'], how='left')
    samplesWithActors2 = samplesWithActors1.withColumn('actorName', F.col('actorName')) \
        .withColumn('birthDate', F.col('birthDate')) \
        .drop('actorName')
    samplesWithActors3 = samplesWithActors2.withColumn('actorJobTitle1', split(F.col('jobTitle'), "\\|")[0]) \
        .withColumn('actorJobTitle2', split(F.col('jobTitle'), "\\|")[1]) \
        .withColumn('actorJobTitle3', split(F.col('jobTitle'), "\\|")[2])
    actorRatingFeatures = samplesWithActors3.groupBy('actorId').agg(F.count(F.lit(1)).alias('actorRatingCount'),
                                                                    format_number(F.avg(F.col('rating')), NUMBER_PRECISION).alias('actorAvgRating'),
                                                                    F.stddev(F.col('rating')).alias('actorRatingStddev')).fillna(0) \
        .withColumn('actorRatingStddev', format_number(F.col('actorRatingStddev'), NUMBER_PRECISION))
    samplesWithActors4 = samplesWithActors3.join(actorRatingFeatures, on=['actorId'], how='left')
    samplesWithActors4.printSchema()
    samplesWithActors4.show(5, truncate=False)
    return samplesWithActors4

def extractJobTitles(jobTitles_list):
    '''
    传入一个格式如 ["Actor|Producer|Soundtrack", "Actor|Producer|Soundtrack"] 的列表
    按每个职业计数，返回按降序排列的职业列表
    '''
    jobTitles = defaultdict(int)
    for jobTitle in jobTitles_list:
        for title in jobTitle.split('|'):
            jobTitles[title] += 1
    sortedJobTitles = sorted(jobTitles.items(), key=lambda x: x[1], reverse=True)
    return [x[0] for x in sortedJobTitles]

def addUserFeatures(samplesWithActorFeatures):
    extractJobTitlesUdf = udf(lambda x: extractJobTitles(x), ArrayType(StringType()))
    samplesWithUserFeatures = samplesWithActorFeatures \
        .withColumn('userPositiveHistory', F.collect_list(when(F.col('label') == 1, F.col('actorId')).otherwise(None)).over(sql.Window.partitionBy('userId').orderBy('timestamp').rowsBetween(-100, -1))) \
        .withColumn('userPositiveHistory', reverse(F.col('userPositiveHistory'))) \
        .withColumn('userRatedActor1', F.col('userPositiveHistory')[0]) \
        .withColumn('userRatedActor2', F.col('userPositiveHistory')[1]) \
        .withColumn('userRatedActor3', F.col('userPositiveHistory')[2]) \
        .withColumn('userRatedActor4', F.col('userPositiveHistory')[3]) \
        .withColumn('userRatedActor5', F.col('userPositiveHistory')[4]) \
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
    samplesWithUserFeatures.filter(samplesWithActorFeatures['userId'] == 1).orderBy(F.col('timestamp').asc()).show(truncate=False)
    return samplesWithUserFeatures

def splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path):
    smallSamples = samplesWithUserFeatures.sample(0.1)
    trainingSamples, testSamples = smallSamples.randomSplit([0.8, 0.2])
    trainingSavePath = file_path + '/trainingSamplesActor'
    testSavePath = file_path + '/testSamplesActor'
    trainingSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(trainingSavePath)
    testSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(testSavePath)

def splitAndSaveTrainingTestSamplesByTimeStamp(samplesWithUserFeatures, file_path):
    smallSamples = samplesWithUserFeatures.sample(0.1)
    quantile = smallSamples.stat.approxQuantile('timestamp', [0.8], 0.05)
    splitTimestamp = quantile[0]
    trainingSamples = smallSamples.filter(F.col('timestamp') <= splitTimestamp)
    testSamples = smallSamples.filter(F.col('timestamp') > splitTimestamp)
    trainingSavePath = file_path + '/trainingSamplesActor'
    testSavePath = file_path + '/testSamplesActor'
    trainingSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(trainingSavePath)
    testSamples.repartition(1).write.option('header', 'true').mode('overwrite').csv(testSavePath)

if __name__ == '__main__':
    conf = SparkConf().setAppName('featureEngineeringActor').setMaster('local')
    spark = SparkSession.builder.config(conf=conf).getOrCreate()
    file_path = 'file:///home/xe/Documents/idea/SparrowRecSys/src/main/resources'
    actorResourcesPath = file_path + "/webroot/sampledata/actors.csv"
    ratingsResourcesPath = file_path + "/webroot/sampledata/actor_ratings.csv"
    actorSamples = spark.read.format('csv').option('header', 'true').load(actorResourcesPath)
    ratingSamples = spark.read.format('csv').option('header', 'true').load(ratingsResourcesPath)
    ratingSamplesWithLabel = addSampleLabel(ratingSamples)
    ratingSamplesWithLabel.show(10, truncate=False)
    samplesWithactorFeatures = addActorFeatures(actorSamples, ratingSamplesWithLabel)
    samplesWithUserFeatures = addUserFeatures(samplesWithactorFeatures)
    # 保存样本为 csv 格式
    splitAndSaveTrainingTestSamples(samplesWithUserFeatures, file_path + "/webroot/sampledata")
    # splitAndSaveTrainingTestSamplesByTimeStamp(samplesWithUserFeatures, file_path + "/webroot/sampledata")
