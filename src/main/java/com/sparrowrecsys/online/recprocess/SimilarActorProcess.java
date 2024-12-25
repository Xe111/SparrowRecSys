package com.sparrowrecsys.online.recprocess;

import com.sparrowrecsys.online.datamanager.DataManager;
import com.sparrowrecsys.online.datamanager.Actor;

import java.util.*;

/**
 * Recommendation process of similar actors
 */

public class SimilarActorProcess {

    /**
     * get recommendation actor list
     *
     * @param actorId input actor id
     * @param size    size of similar items
     * @param model   model used for calculating similarity
     * @return list of similar actors
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

        List<Actor> recList = getRecList(10, 1677, "emb");
        if (recList.size() == 0) {
            System.out.println("No recommendation found");
        }
        System.out.println("recList.size() = " + recList.size());
        System.out.println("Recommendation list for actor "+DataManager.getInstance().getActorById(1).getName()+":");
        for (Actor actor : recList) {
            System.out.println("    "+actor.getActorId() + " " + actor.getName());
        }
    }

    public static List<Actor> getRecList(int actorId, int size, String model) {
        Actor actor = DataManager.getInstance().getActorById(actorId);
        if (null == actor) {
            return new ArrayList<>();
        }
        List<Actor> candidates = candidateGenerator(actor);
        List<Actor> rankedList = ranker(actor, candidates, model);

        if (rankedList.size() > size) {
            return rankedList.subList(0, size);
        }

        return rankedList;
    }

    /**
     * generate candidates for similar actors recommendation
     *
     * @param actor input actor object
     * @return actor candidates
     */
    public static List<Actor> candidateGenerator(Actor actor) {
        HashMap<Integer, Actor> candidateMap = new HashMap<>();
        List<Actor> candidates = DataManager.getInstance().getActors(2000, "rating");
        for (Actor candidate : candidates) {
            candidateMap.put(candidate.getActorId(), candidate);
        }
        candidateMap.remove(actor.getActorId());
        return new ArrayList<>(candidateMap.values());
    }

    /**
     * ranker for similar actors recommendation
     *
     * @param actor      input actor object
     * @param candidates candidate actors
     * @param model      model used for calculating similarity
     * @return ranked actor list
     */
    public static List<Actor> ranker(Actor actor, List<Actor> candidates, String model) {
        HashMap<Actor, Double> candidateScoreMap = new HashMap<>();
        for (Actor candidate : candidates) {
            double similarity;
            switch (model) {
                case "emb":
                    similarity = calculateEmbSimilarScore(actor, candidate);
                    break;
                default:
                    similarity = calculateEmbSimilarScore(actor, candidate);
                    break;
            }
            candidateScoreMap.put(candidate, similarity);
        }
        List<Actor> rankedList = new ArrayList<>(candidateScoreMap.keySet());
        rankedList.sort((o1, o2) -> {
            double score1 = candidateScoreMap.get(o1);
            double score2 = candidateScoreMap.get(o2);
            return Double.compare(score2, score1);
        });
        return rankedList;
    }

    /**
     * calculate similarity score between two actors
     *
     * @param actor    input actor
     * @param candidate candidate actor
     * @return similarity score
     */
    public static double calculateEmbSimilarScore(Actor actor, Actor candidate) {
        if (null == actor || null == candidate) {
            return -1;
        }
        if(candidate.getEmb() == null){
            return -1;
        }
        return actor.getEmb().calculateSimilarity(candidate.getEmb());
    }

}

