package com.sparrowrecsys.online.datamanager;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.sparrowrecsys.online.model.Embedding;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;


public class Actor {
    int actorId;
    String name;
    List<Integer> movies;

    int ratingNumber;
    double averageRating;

    @JsonIgnore
    Embedding emb;

    @JsonIgnore
    List<Rating> ratings;

    @JsonIgnore
    Map<String, String> actorFeatures;

    final int TOP_RATING_SIZE = 10;//

    @JsonSerialize(using = RatingListSerializer.class)
    List<Rating> topRatings;

    public Actor() {
        ratingNumber = 0;
        averageRating = 0;
        this.movies = new ArrayList<>();
        this.ratings = new ArrayList<>();
        this.topRatings = new LinkedList<>();
        this.emb = null;
        this.actorFeatures = null;
    }

    public int getActorId() {
        return actorId;
    }

    public void setActorId(int actorId) {
        this.actorId = actorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Integer> getMovies() {
        return movies;
    }

    public void addMovie(Integer movieId) {
        this.movies.add(movieId);
    }

    public List<Rating> getRatings() {
        return ratings;
    }

    public void addRating(Rating rating) {
        averageRating = (averageRating * ratingNumber + rating.getScore()) / (ratingNumber+1);
        ratingNumber++;
        this.ratings.add(rating);
        addTopRating(rating);
    }

    public void addTopRating(Rating rating){
        if (this.topRatings.isEmpty()){
            this.topRatings.add(rating);
        }else{
            int index = 0;
            for (Rating topRating : this.topRatings){
                if (topRating.getScore() >= rating.getScore()){
                    break;
                }
                index ++;
            }
            topRatings.add(index, rating);
            if (topRatings.size() > TOP_RATING_SIZE) {
                topRatings.remove(0);
            }
        }
    }

    public int getRatingNumber() {
        return ratingNumber;
    }

    public double getAverageRating() {
        return averageRating;
    }

    public Embedding getEmb() {
        return emb;
    }

    public void setEmb(Embedding emb) {
        this.emb = emb;
    }

    public Map<String, String> getActorFeatures() {
        return actorFeatures;
    }

    public void setActorFeatures(Map<String, String> actorFeatures) {
        this.actorFeatures = actorFeatures;
    }
}
