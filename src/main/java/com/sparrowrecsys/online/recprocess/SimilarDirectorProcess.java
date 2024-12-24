package com.sparrowrecsys.online.recprocess;

import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Director;

import java.util.*;

/**
 * Recommendation process of similar directors
 */

public class SimilarDirectorProcess {

    /**
     * get recommendation director list
     *
     * @param directorId input director id
     * @param size       size of similar items
     * @param model      model used for calculating similarity
     * @return list of similar directors
     */

    public static void main(String[] args) {
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
        List<Director> recList = getRecList(5, 10, "emb");
        if (recList.size() == 0) {
            System.out.println("No recommendation found");
        }
        System.out.println("Recommendation list for director "+DataManager.getInstance().getDirectorById(1).getName()+":");
        for (Director director : recList) {
            System.out.println("    "+director.getDirectorId() + " " + director.getName());
        }
    }

    public static List<Director> getRecList(int directorId, int size, String model) {
        Director director = DataManager.getInstance().getDirectorById(directorId);
        if (null == director) {
            return new ArrayList<>();
        }
        List<Director> candidates = candidateGenerator(director);
        List<Director> rankedList = ranker(director, candidates, model);

        if (rankedList.size() > size) {
            return rankedList.subList(0, size);
        }

        return rankedList;
    }

    /**
     * generate candidates for similar directors recommendation
     *
     * @param director input director object
     * @return director candidates
     */
    public static List<Director> candidateGenerator(Director director) {
        HashMap<Integer, Director> candidateMap = new HashMap<>();
        List<Director> candidates = DataManager.getInstance().getDirectors(2000, "rating");
        for (Director candidate : candidates) {
            candidateMap.put(candidate.getDirectorId(), candidate);
        }
        candidateMap.remove(director.getDirectorId());
        return new ArrayList<>(candidateMap.values());
    }

    /**
     * ranker for similar directors recommendation
     *
     * @param director   input director object
     * @param candidates candidate directors
     * @param model      model used for calculating similarity
     * @return ranked director list
     */
    public static List<Director> ranker(Director director, List<Director> candidates, String model) {
        HashMap<Director, Double> candidateScoreMap = new HashMap<>();
        for (Director candidate : candidates) {
            double similarity;
            switch (model) {
                case "emb":
                    similarity = calculateEmbSimilarScore(director, candidate);
                    break;
                default:
                    similarity = calculateEmbSimilarScore(director, candidate);
                    break;
            }
            candidateScoreMap.put(candidate, similarity);
        }
        List<Director> rankedList = new ArrayList<>(candidateScoreMap.keySet());
        rankedList.sort((o1, o2) -> {
            double score1 = candidateScoreMap.get(o1);
            double score2 = candidateScoreMap.get(o2);
            return Double.compare(score2, score1);
        });
        return rankedList;
    }

    /**
     * calculate similarity score between two directors
     *
     * @param director  input director
     * @param candidate candidate director
     * @return similarity score
     */
    public static double calculateEmbSimilarScore(Director director, Director candidate) {
        if (null == director || null == candidate) {
            return -1;
        }
        return director.getEmb().calculateSimilarity(candidate.getEmb());
    }

}
