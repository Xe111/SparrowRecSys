package com.sparrowrecsys.online.recprocess;

import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.User;
import com.sparrowrecsys.online.datamanager.Movie;
import com.sparrowrecsys.online.datamanager.RedisClient;
import com.sparrowrecsys.online.util.Config;
import com.sparrowrecsys.online.util.Utility;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.*;

import static com.sparrowrecsys.online.util.HttpClient.asyncSinglePostRequest;

/**
 * Recommendation process of similar movies
 */

public class RecForYouProcess {
    public static void main(String[] args) {
        //load data
        String basePath = "/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot";
        try {
            // 加载电影数据
            DataManager.getInstance().loadData(basePath + "/sampledata/movies.csv",
                    basePath + "/sampledata/links.csv", basePath + "/sampledata/ratings.csv",
                    basePath + "/modeldata2/item2vecEmb.csv",
                    basePath + "/modeldata2/userEmb.csv",
                    "i2vEmb", "uEmb");
            // 加载演员和导演数据
            DataManager.getInstance().loadActorDirectorData(basePath + "/sampledata/actor_director.csv",
                    basePath + "/sampledata/actors.csv",
                    basePath + "/modeldata2/actorEmb.csv",
                    "actor:",
                    basePath + "/modeldata2/userActorEmb.csv",
                    "actor_user:",
                    basePath + "/sampledata/actor_ratings.csv",
                    basePath + "/sampledata/directors.csv",
                    basePath + "/modeldata2/directorEmb.csv",
                    "director:",
                    basePath + "/modeldata2/userDirectorEmb.csv",
                    "director_user:",
                    basePath + "/sampledata/director_ratings.csv");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Failed to load data");
            return;
        }

        for(int i =1 ;i<=3;i++){
            System.out.println("Recommendation for user " + i);
            List<Movie> recList = getRecList(i, 3, "nerualcf");
            if (recList.size() == 0) {
                System.out.println("No recommendation result.");
                return;
            }
            for (Movie m : recList) {
                System.out.println(m.getMovieId() + " " + m.getTitle());
            }
        }

    }

    /**
     * get recommendation movie list
     * @param userId input user id
     * @param size  size of similar items
     * @param model model used for calculating similarity
     * @return  list of similar movies
     */
    public static List<Movie> getRecList(int userId, int size, String model){
        User user = DataManager.getInstance().getUserById(userId);
        if (null == user){
            return new ArrayList<>();
        }
        final int CANDIDATE_SIZE = 800;
        List<Movie> candidates = DataManager.getInstance().getMovies(CANDIDATE_SIZE, "rating");

        //load user emb from redis if data source is redis
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_REDIS)){
            String userEmbKey = "uEmb:" + userId;
            String userEmb = RedisClient.getInstance().get(userEmbKey);
            if (null != userEmb){
                user.setEmb(Utility.parseEmbStr(userEmb));
            }
        }

        if (Config.IS_LOAD_USER_FEATURE_FROM_REDIS){
            String userFeaturesKey = "uf:" + userId;
            Map<String, String> userFeatures = RedisClient.getInstance().hgetAll(userFeaturesKey);
            if (null != userFeatures){
                user.setUserFeatures(userFeatures);
            }
        }

        List<Movie> rankedList = ranker(user, candidates, model);

        if (rankedList.size() > size){
            return rankedList.subList(0, size);
        }
        return rankedList;
    }

    /**
     * rank candidates
     * @param user    input user
     * @param candidates    movie candidates
     * @param model     model name used for ranking
     * @return  ranked movie list
     */
    public static List<Movie> ranker(User user, List<Movie> candidates, String model){
        HashMap<Movie, Double> candidateScoreMap = new HashMap<>();

        switch (model){
            case "emb":
                for (Movie candidate : candidates){
                    double similarity = calculateEmbSimilarScore(user, candidate);
                    candidateScoreMap.put(candidate, similarity);
                }
                break;
            case "nerualcf":
                callNeuralCFTFServing(user, candidates, candidateScoreMap);
                break;
            default:
                //default ranking in candidate set
                for (int i = 0 ; i < candidates.size(); i++){
                    candidateScoreMap.put(candidates.get(i), (double)(candidates.size() - i));
                }
        }

        List<Movie> rankedList = new ArrayList<>();
        candidateScoreMap.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())).forEach(m -> rankedList.add(m.getKey()));
        return rankedList;
    }

    /**
     * function to calculate similarity score based on embedding
     * @param user     input user
     * @param candidate candidate movie
     * @return  similarity score
     */
    public static double calculateEmbSimilarScore(User user, Movie candidate){
        if (null == user || null == candidate || null == user.getEmb()){
            return -1;
        }
        return user.getEmb().calculateSimilarity(candidate.getEmb());
    }

    /**
     * call TenserFlow serving to get the NeuralCF model inference result
     * @param user              input user
     * @param candidates        candidate movies
     * @param candidateScoreMap save prediction score into the score map
     */
    public static void callNeuralCFTFServing(User user, List<Movie> candidates, HashMap<Movie, Double> candidateScoreMap){
        if (null == user || null == candidates || candidates.size() == 0){
            return;
        }

        JSONArray instances = new JSONArray();
        for (Movie m : candidates){
            JSONObject instance = new JSONObject();
            instance.put("userId", user.getUserId());
            instance.put("movieId", m.getMovieId());
            instances.put(instance);
        }

        JSONObject instancesRoot = new JSONObject();
        instancesRoot.put("instances", instances);

        //need to confirm the tf serving end point
        String predictionScores = asyncSinglePostRequest("http://localhost:8501/v1/models/neuralcf:predict", instancesRoot.toString());
        System.out.println("send user" + user.getUserId() + " request to tf serving.");

        JSONObject predictionsObject = new JSONObject(predictionScores);
        JSONArray scores = predictionsObject.getJSONArray("predictions");
        for (int i = 0 ; i < candidates.size(); i++){
            candidateScoreMap.put(candidates.get(i), scores.getJSONArray(i).getDouble(0));
        }
    }
}
