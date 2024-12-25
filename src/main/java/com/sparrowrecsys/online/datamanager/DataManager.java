package com.sparrowrecsys.online.datamanager;

import com.sparrowrecsys.online.util.Config;
import com.sparrowrecsys.online.util.Utility;
import ml.bundle.dtree.Split;
import org.apache.spark.sql.execution.columnar.BOOLEAN;

import java.io.File;
import java.util.*;

//TODO:handle missing data

/**
 * DataManager is an utility class, takes charge of all data loading logic.
 */

public class DataManager {
    // singleton instance
    private static volatile DataManager instance;
    HashMap<Integer, Movie> movieMap;
    HashMap<Integer, User> userMap;
    HashMap<Integer, Actor> actorMap;
    HashMap<Integer, Director> directorMap;
    // genre reverse index for quick querying all movies in a genre
    HashMap<String, List<Movie>> genreReverseIndexMap;
    HashMap<String,List<Actor>> jobTitleReverseIndexMapActor;
    HashMap<String,List<Director>> jobTitleReverseIndexMapDirector;

    // main for test
    public static void main(String[] args) throws Exception {
        String basePath = "/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot";
        DataManager.getInstance().loadData(basePath + "/sampledata/movies.csv",
                basePath + "/sampledata/links.csv",
                basePath + "/sampledata/ratings.csv",
                basePath + "/modeldata2/item2vecEmb.csv",
                basePath + "/modeldata2/userEmb.csv",
                "i2vEmb", "uEmb");
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

        // get first 3 actors
        List<Actor> actors1 = DataManager.getInstance().getActors(0, "rating");
        for (Actor actor : actors1) {
            if (actor.getMovies().size() >= 2) {
                System.out.println(actor.getName());
                System.out.println(actor.getAverageRating());
                System.out.println(actor.getActorId());
                System.out.println(actor.getEmb());
                List<Integer> moviesId = actor.getMovies();
                if (moviesId.isEmpty()) {
                    System.out.println("    No movies in this actor");
                    continue;
                }
                for (Integer movieId : moviesId) {
                    Movie movie = DataManager.getInstance().getMovieById(movieId);
                    if (null != movie) {
                        System.out.println("    Movie: " + movie.getTitle());
                    }
                }
            }
        }
        // get first 3 directors
        List<Director> directors = DataManager.getInstance().getDirectors(600, "rating");
        for (Director director : directors) {
            if (director.getMovies().size() >= 2) {
                System.out.println(director.getName());
                System.out.println(director.getAverageRating());
                System.out.println(director.getDirectorId());
                System.out.println(director.getEmb());
                List<Integer> moviesId = director.getMovies();
                if (moviesId.isEmpty()) {
                    System.out.println("    No movies for this director");
                    continue;
                }
                for (Integer movieId : moviesId) {
                    Movie movie = DataManager.getInstance().getMovieById(movieId);
                    if (null != movie) {
                        System.out.println("    Movie: " + movie.getTitle());
                    }
                }
            }
        }

        //print all job titles
        DataManager.getInstance().printAllJobTitle();
    }

    private DataManager() {
        this.movieMap = new HashMap<>();
        this.userMap = new HashMap<>();
        this.actorMap = new HashMap<>();
        this.directorMap = new HashMap<>();
        this.genreReverseIndexMap = new HashMap<>();
        this.jobTitleReverseIndexMapActor = new HashMap<>();
        this.jobTitleReverseIndexMapDirector = new HashMap<>();
        instance = this;
    }

    public static void setInstance(DataManager instance) {
        DataManager.instance = instance;
    }

    public static DataManager getInstance() {
        if (null == instance) {
            synchronized (DataManager.class) {
                if (null == instance) {
                    instance = new DataManager();
                }
            }
        }
        return instance;
    }

    // load data from file system including movie, rating, link data and model data
    // like embedding vectors.
    public void loadData(String movieDataPath, String linkDataPath, String ratingDataPath, String movieEmbPath,
            String userEmbPath, String movieRedisKey, String userRedisKey) throws Exception {
        loadMovieData(movieDataPath);
        loadLinkData(linkDataPath);
        loadRatingData(ratingDataPath);
        loadMovieEmb(movieEmbPath, movieRedisKey);
        if (Config.IS_LOAD_ITEM_FEATURE_FROM_REDIS) {
            loadMovieFeatures("mf:");
        }

        loadUserEmb(userEmbPath, userRedisKey);

    }

    public void loadActorDirectorData(String actorDirectorPath, String actorIdPath, String actorEmbPath,
            String actorRedisKey, String actorUserEmbPath, String actorUserRedisKey, String actorRatingPath,
            String directorIdPath, String directorEmbPath, String directorRedisKey, String directorUserEmbPath,
            String directorUserRedisKey, String directorRatingPath) throws Exception {
        loadActorIdData(actorIdPath);
        loadDirectorIdData(directorIdPath);
        _loadActorDirectorData(actorDirectorPath);
        loadRatingDataActor(actorRatingPath);
        loadActorEmb(actorEmbPath, actorRedisKey);
        loadUserEmbActor(actorUserEmbPath, actorUserRedisKey);
        loadRatingDataDirector(directorRatingPath);
        loadDirectorEmb(directorEmbPath, directorRedisKey);
        loadUserEmbDirector(directorUserEmbPath, directorUserRedisKey);
    }

    private void _loadActorDirectorData(String actorDirectorPath) throws Exception {
        System.out.println("Loading actor director data from " + actorDirectorPath + " ...");
        boolean skipFirstLine = true;
        try (Scanner scanner = new Scanner(new File(actorDirectorPath))) {
            while (scanner.hasNextLine()) {
                String actorDirectorRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] actorDirectorData = actorDirectorRawData.split(",");
                if (actorDirectorData.length == 3) {
                    int movieId = Integer.parseInt(actorDirectorData[0]);
                    String[] actorNames = actorDirectorData[1].split("\\|");
                    String[] directorNames = actorDirectorData[2].split("\\|");
                    Movie movie = this.movieMap.get(movieId);
                    if (null == movie) {
                        continue;
                    }
                    for (String actorName : actorNames) {
                        Actor actor = getActorByName(actorName);// actor reference
                        if (null == actor) {
                            actor = new Actor();
                            actor.setName(actorName);
                            actor.setActorId(this.actorMap.size() + 1);
                            this.actorMap.put(actor.getActorId(), actor);
                        }
                        movie.addActor(actor.getActorId());
                        actor.addMovie(movieId);
                    }
                    for (String directorName : directorNames) {
                        Director director = getDirectorByName(directorName);// director reference
                        if (null == director) {
                            director = new Director();
                            director.setName(directorName);
                            director.setDirectorId(this.directorMap.size() + 1);
                            this.directorMap.put(director.getDirectorId(), director);
                        }
                        movie.addDirector(director.getDirectorId());
                        director.addMovie(movieId);
                    }
                }
            }
        }
        System.out.println("Loading actor director data completed. " + this.actorMap.size() + " actors and "
                + this.directorMap.size() + " directors in total.");
    }

    private void loadActorIdData(String actorIdPath) throws Exception {
        System.out.println("Loading actor id data from " + actorIdPath + " ...");
        boolean skipFirstLine = true;
        try (Scanner scanner = new Scanner(new File(actorIdPath))) {
            while (scanner.hasNextLine()) {
                String actorRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] actorData = actorRawData.split(",");
                if (actorData.length == 4) {
                    Actor actor = new Actor();
                    actor.setActorId(Integer.parseInt(actorData[0]));
                    actor.setName(actorData[1].trim());
                    actor.setBirthDate(actorData[2].trim());
                    String[] jobTitles = actorData[3].split("\\|");
                    for (String jobTitle : jobTitles) {
                        actor.addJobTitle(jobTitle);
                        addActor2JobTitleIndex(jobTitle, actor);
                    }
                    this.actorMap.put(actor.getActorId(), actor);
                }
            }
        }
        System.out.println("Loading actor id data completed. " + this.actorMap.size() + " actors in total.");
    }

    private void loadDirectorIdData(String directorIdPath) throws Exception {
        System.out.println("Loading director id data from " + directorIdPath + " ...");
        boolean skipFirstLine = true;
        try (Scanner scanner = new Scanner(new File(directorIdPath))) {
            while (scanner.hasNextLine()) {
                String directorRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] directorData = directorRawData.split(",");
                if (directorData.length == 4) {
                    Director director = new Director();
                    director.setDirectorId(Integer.parseInt(directorData[0]));
                    director.setName(directorData[1].trim());
                    director.setBirthDate(directorData[2].trim());
                    String[] jobTitles = directorData[3].split("\\|");
                    for (String jobTitle : jobTitles) {
                        director.addJobTitle(jobTitle);
                        addDirector2JobTitleIndex(jobTitle, director);
                    }
                    this.directorMap.put(director.getDirectorId(), director);
                }
            }
        }
        System.out.println("Loading director id data completed. " + this.directorMap.size() + " directors in total.");
    }

    private void loadActorEmb(String actorEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading actor embedding from " + actorEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(actorEmbPath))) {
                while (scanner.hasNextLine()) {
                    String actorRawEmbData = scanner.nextLine();
                    String[] actorEmbData = actorRawEmbData.split(":");
                    if (actorEmbData.length == 2) {
                        Actor a = getActorById(Integer.parseInt(actorEmbData[0]));
                        if (null == a) {
                            continue;
                        }
                        a.setEmb(Utility.parseEmbStr(actorEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading actor embedding completed. " + validEmbCount + " actor embeddings in total.");
        } else {
            System.out.println("Loading actor embedding from Redis ...");
            Set<String> actorEmbKeys = RedisClient.getInstance().keys(embKey + "*");
            int validEmbCount = 0;
            for (String actorEmbKey : actorEmbKeys) {
                String actorId = actorEmbKey.split(":")[1];
                Actor a = getActorById(Integer.parseInt(actorId));
                if (null == a) {
                    continue;
                }
                a.setEmb(Utility.parseEmbStr(RedisClient.getInstance().get(actorEmbKey)));
                validEmbCount++;
            }
            System.out.println("Loading actor embedding completed. " + validEmbCount + " actor embeddings in total.");
        }
    }

    private void loadDirectorEmb(String directorEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading director embedding from " + directorEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(directorEmbPath))) {
                while (scanner.hasNextLine()) {
                    String directorRawEmbData = scanner.nextLine();
                    String[] directorEmbData = directorRawEmbData.split(":");
                    if (directorEmbData.length == 2) {
                        Director d = getDirectorById(Integer.parseInt(directorEmbData[0]));
                        if (null == d) {
                            continue;
                        }
                        d.setEmb(Utility.parseEmbStr(directorEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println(
                    "Loading director embedding completed. " + validEmbCount + " director embeddings in total.");
        } else {
            System.out.println("Loading director embedding from Redis ...");
            Set<String> directorEmbKeys = RedisClient.getInstance().keys(embKey + "*");
            int validEmbCount = 0;
            for (String directorEmbKey : directorEmbKeys) {
                String directorId = directorEmbKey.split(":")[1];
                Director d = getDirectorById(Integer.parseInt(directorId));
                if (null == d) {
                    continue;
                }
                d.setEmb(Utility.parseEmbStr(RedisClient.getInstance().get(directorEmbKey)));
                validEmbCount++;
            }
            System.out.println(
                    "Loading director embedding completed. " + validEmbCount + " director embeddings in total.");
        }
    }

    // load movie data from movies.csv
    private void loadMovieData(String movieDataPath) throws Exception {
        System.out.println("Loading movie data from " + movieDataPath + " ...");
        boolean skipFirstLine = true;
        try (Scanner scanner = new Scanner(new File(movieDataPath))) {
            while (scanner.hasNextLine()) {
                String movieRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] movieData = movieRawData.split(",");
                if (movieData.length == 3) {
                    Movie movie = new Movie();
                    movie.setMovieId(Integer.parseInt(movieData[0]));
                    if (Integer.parseInt(movieData[0]) == 11) {
                        System.out.println("movieId: " + movieData[0]);
                    }
                    int releaseYear = parseReleaseYear(movieData[1].trim());
                    if (releaseYear == -1) {
                        movie.setTitle(movieData[1].trim());
                    } else {
                        movie.setReleaseYear(releaseYear);
                        movie.setTitle(movieData[1].trim().substring(0, movieData[1].trim().length() - 6).trim());
                    }
                    String genres = movieData[2];
                    if (!genres.trim().isEmpty()) {
                        String[] genreArray = genres.split("\\|");
                        for (String genre : genreArray) {
                            movie.addGenre(genre);
                            addMovie2GenreIndex(genre, movie);
                        }
                    }
                    this.movieMap.put(movie.getMovieId(), movie);
                }
            }
        }
        System.out.println("Loading movie data completed. " + this.movieMap.size() + " movies in total.");
    }

    // load movie embedding
    private void loadMovieEmb(String movieEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading movie embedding from " + movieEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(movieEmbPath))) {
                while (scanner.hasNextLine()) {
                    String movieRawEmbData = scanner.nextLine();
                    String[] movieEmbData = movieRawEmbData.split(":");
                    if (movieEmbData.length == 2) {
                        Movie m = getMovieById(Integer.parseInt(movieEmbData[0]));
                        if (null == m) {
                            continue;
                        }
                        m.setEmb(Utility.parseEmbStr(movieEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading movie embedding completed. " + validEmbCount + " movie embeddings in total.");
        } else {
            System.out.println("Loading movie embedding from Redis ...");
            Set<String> movieEmbKeys = RedisClient.getInstance().keys(embKey + "*");
            int validEmbCount = 0;
            for (String movieEmbKey : movieEmbKeys) {
                String movieId = movieEmbKey.split(":")[1];
                Movie m = getMovieById(Integer.parseInt(movieId));
                if (null == m) {
                    continue;
                }
                m.setEmb(Utility.parseEmbStr(RedisClient.getInstance().get(movieEmbKey)));
                validEmbCount++;
            }
            System.out.println("Loading movie embedding completed. " + validEmbCount + " movie embeddings in total.");
        }
    }

    // load movie features
    private void loadMovieFeatures(String movieFeaturesPrefix) throws Exception {
        System.out.println("Loading movie features from Redis ...");
        Set<String> movieFeaturesKeys = RedisClient.getInstance().keys(movieFeaturesPrefix + "*");
        int validFeaturesCount = 0;
        for (String movieFeaturesKey : movieFeaturesKeys) {
            String movieId = movieFeaturesKey.split(":")[1];
            Movie m = getMovieById(Integer.parseInt(movieId));
            if (null == m) {
                continue;
            }
            m.setMovieFeatures(RedisClient.getInstance().hgetAll(movieFeaturesKey));
            validFeaturesCount++;
        }
        System.out.println("Loading movie features completed. " + validFeaturesCount + " movie features in total.");
    }

    // load user embedding

    private void loadUserEmb(String userEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading user embedding from " + userEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(userEmbPath))) {
                while (scanner.hasNextLine()) {
                    String userRawEmbData = scanner.nextLine();
                    String[] userEmbData = userRawEmbData.split(":");
                    if (userEmbData.length == 2) {
                        User u = getUserById(Integer.parseInt(userEmbData[0]));
                        if (null == u) {
                            continue;
                        }
                        u.setEmb(Utility.parseEmbStr(userEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading user embedding completed. " + validEmbCount + " user embeddings in total.");
        }
    }

    private void loadUserEmbActor(String userEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading user embedding from " + userEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(userEmbPath))) {
                while (scanner.hasNextLine()) {
                    String userRawEmbData = scanner.nextLine();
                    String[] userEmbData = userRawEmbData.split(":");
                    if (userEmbData.length == 2) {
                        User u = getUserById(Integer.parseInt(userEmbData[0]));
                        if (null == u) {
                            continue;
                        }
                        u.setActorEmb(Utility.parseEmbStr(userEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading user embedding completed. " + validEmbCount + " user embeddings in total.");
        }
    }

    private void loadUserEmbDirector(String userEmbPath, String embKey) throws Exception {
        if (Config.EMB_DATA_SOURCE.equals(Config.DATA_SOURCE_FILE)) {
            System.out.println("Loading user embedding from " + userEmbPath + " ...");
            int validEmbCount = 0;
            try (Scanner scanner = new Scanner(new File(userEmbPath))) {
                while (scanner.hasNextLine()) {
                    String userRawEmbData = scanner.nextLine();
                    String[] userEmbData = userRawEmbData.split(":");
                    if (userEmbData.length == 2) {
                        User u = getUserById(Integer.parseInt(userEmbData[0]));
                        if (null == u) {
                            continue;
                        }
                        u.setDirectorEmb(Utility.parseEmbStr(userEmbData[1]));
                        validEmbCount++;
                    }
                }
            }
            System.out.println("Loading user embedding completed. " + validEmbCount + " user embeddings in total.");
        }
    }

    // parse release year
    private int parseReleaseYear(String rawTitle) {
        if (null == rawTitle || rawTitle.trim().length() < 6) {
            return -1;
        } else {
            String yearString = rawTitle.trim().substring(rawTitle.length() - 5, rawTitle.length() - 1);
            try {
                return Integer.parseInt(yearString);
            } catch (NumberFormatException exception) {
                return -1;
            }
        }
    }

    // load links data from links.csv
    private void loadLinkData(String linkDataPath) throws Exception {
        System.out.println("Loading link data from " + linkDataPath + " ...");
        int count = 0;
        boolean skipFirstLine = true;
        try (Scanner scanner = new Scanner(new File(linkDataPath))) {
            while (scanner.hasNextLine()) {
                String linkRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] linkData = linkRawData.split(",");
                if (linkData.length == 3) {
                    int movieId = Integer.parseInt(linkData[0]);
                    Movie movie = this.movieMap.get(movieId);
                    if (null != movie) {
                        count++;
                        movie.setImdbId(linkData[1].trim());
                        movie.setTmdbId(linkData[2].trim());
                    }
                }
            }
        }
        System.out.println("Loading link data completed. " + count + " links in total.");
    }

    // load ratings data from ratings.csv
    private void loadRatingData(String ratingDataPath) throws Exception {
        System.out.println("Loading rating data from " + ratingDataPath + " ...");
        boolean skipFirstLine = true;
        int count = 0;
        try (Scanner scanner = new Scanner(new File(ratingDataPath))) {
            while (scanner.hasNextLine()) {
                String ratingRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] linkData = ratingRawData.split(",");
                if (linkData.length == 4) {
                    count++;
                    Rating rating = new Rating();
                    rating.setUserId(Integer.parseInt(linkData[0]));
                    rating.setMovieId(Integer.parseInt(linkData[1]));
                    rating.setScore(Float.parseFloat(linkData[2]));
                    rating.setTimestamp(Long.parseLong(linkData[3]));
                    Movie movie = this.movieMap.get(rating.getMovieId());
                    if (null != movie) {
                        movie.addRating(rating);
                    }
                    if (!this.userMap.containsKey(rating.getUserId())) {
                        User user = new User();
                        user.setUserId(rating.getUserId());
                        this.userMap.put(user.getUserId(), user);
                    }
                    this.userMap.get(rating.getUserId()).addRating(rating);
                }
            }
        }

        System.out.println("Loading rating data completed. " + count + " ratings in total.");
    }

    private void loadRatingDataActor(String actorRatingDataPath) throws Exception {
        System.out.println("Loading rating data from " + actorRatingDataPath + " ...");
        boolean skipFirstLine = true;
        int count = 0;
        try (Scanner scanner = new Scanner(new File(actorRatingDataPath))) {
            while (scanner.hasNextLine()) {
                String ratingRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] linkData = ratingRawData.split(",");
                if (linkData.length == 4) {
                    count++;
                    Rating rating = new Rating();
                    rating.setUserId(Integer.parseInt(linkData[0]));
                    rating.setMovieId(Integer.parseInt(linkData[1]));// directly use movie id as actor id
                    rating.setScore(Float.parseFloat(linkData[2]));
                    rating.setTimestamp(Long.parseLong(linkData[3]));
                    Actor actor = this.actorMap.get(rating.getMovieId());
                    if (null != actor) {
                        actor.addRating(rating);
                    }
                    if (!this.userMap.containsKey(rating.getUserId())) {
                        User user = new User();
                        user.setUserId(rating.getUserId());
                        this.userMap.put(user.getUserId(), user);
                    }
                    this.userMap.get(rating.getUserId()).addRating(rating);
                }
            }
        }

        System.out.println("Loading rating data completed. " + count + " ratings in total.");
    }

    private void loadRatingDataDirector(String directorRatingDataPath) throws Exception {
        System.out.println("Loading rating data from " + directorRatingDataPath + " ...");
        boolean skipFirstLine = true;
        int count = 0;
        try (Scanner scanner = new Scanner(new File(directorRatingDataPath))) {
            while (scanner.hasNextLine()) {
                String ratingRawData = scanner.nextLine();
                if (skipFirstLine) {
                    skipFirstLine = false;
                    continue;
                }
                String[] linkData = ratingRawData.split(",");
                if (linkData.length == 4) {
                    count++;
                    Rating rating = new Rating();
                    rating.setUserId(Integer.parseInt(linkData[0]));
                    rating.setMovieId(Integer.parseInt(linkData[1]));// directly use movie id as director id
                    rating.setScore(Float.parseFloat(linkData[2]));
                    rating.setTimestamp(Long.parseLong(linkData[3]));
                    Director director = this.directorMap.get(rating.getMovieId());
                    if (null != director) {
                        director.addRating(rating);
                    }
                    if (!this.userMap.containsKey(rating.getUserId())) {
                        User user = new User();
                        user.setUserId(rating.getUserId());
                        this.userMap.put(user.getUserId(), user);
                    }
                    this.userMap.get(rating.getUserId()).addRating(rating);
                }
            }
        }

        System.out.println("Loading rating data completed. " + count + " ratings in total.");
    }

    // add movie to genre reversed index
    private void addMovie2GenreIndex(String genre, Movie movie) {
        if (!this.genreReverseIndexMap.containsKey(genre)) {
            this.genreReverseIndexMap.put(genre, new ArrayList<>());
        }
        this.genreReverseIndexMap.get(genre).add(movie);
    }

    private void addActor2JobTitleIndex(String jobTitle, Actor actor) {
        if (!this.jobTitleReverseIndexMapActor.containsKey(jobTitle)) {
            this.jobTitleReverseIndexMapActor.put(jobTitle, new ArrayList<>());
        }
        this.jobTitleReverseIndexMapActor.get(jobTitle).add(actor);
    }

    private void addDirector2JobTitleIndex(String jobTitle, Director director) {
        if (!this.jobTitleReverseIndexMapDirector.containsKey(jobTitle)) {
            this.jobTitleReverseIndexMapDirector.put(jobTitle, new ArrayList<>());
        }
        this.jobTitleReverseIndexMapDirector.get(jobTitle).add(director);
    }

    // get movies by genre, and order the movies by sortBy method
    public List<Movie> getMoviesByGenre(String genre, int size, String sortBy) {
        if (null != genre) {
            List<Movie> movies = new ArrayList<>(this.genreReverseIndexMap.get(genre));
            switch (sortBy) {
                case "rating":
                    movies.sort((m1, m2) -> Double.compare(m2.getAverageRating(), m1.getAverageRating()));
                    break;
                case "releaseYear":
                    movies.sort((m1, m2) -> Integer.compare(m2.getReleaseYear(), m1.getReleaseYear()));
                    break;
                default:
            }

            if (movies.size() > size) {
                return movies.subList(0, size);
            }
            return movies;
        }
        return null;
    }

    public List<Actor> getActorsByJobTitle(String jobTitle, int size, String sortBy) {
        if (null != jobTitle) {
            List<Actor> actors = new ArrayList<>(this.jobTitleReverseIndexMapActor.get(jobTitle));
            switch (sortBy) {
                case "rating":
                    actors.sort((a1, a2) -> Double.compare(a2.getAverageRating(), a1.getAverageRating()));
                    break;
                default:
            }

            if (actors.size() > size) {
                return actors.subList(0, size);
            }
            return actors;
        }
        return null;
    }

    public List<Director> getDirectorsByJobTitle(String jobTitle, int size, String sortBy) {
        if (null != jobTitle) {
            List<Director> directors = new ArrayList<>(this.jobTitleReverseIndexMapDirector.get(jobTitle));
            switch (sortBy) {
                case "rating":
                    directors.sort((d1, d2) -> Double.compare(d2.getAverageRating(), d1.getAverageRating()));
                    break;
                default:
            }

            if (directors.size() > size) {
                return directors.subList(0, size);
            }
            return directors;
        }
        return null;
    }

    public void printAllJobTitle() {
        System.out.println("Job Titles:");
        //merge jobtitles from all actors and directors
        Set<String> jobTitles = new HashSet<>();
        for(String jobtitle: this.jobTitleReverseIndexMapActor.keySet()){
            jobTitles.add(jobtitle);
        }
        for(String jobtitle: this.jobTitleReverseIndexMapDirector.keySet()){
            jobTitles.add(jobtitle);
        }
        for(String jobtitle: jobTitles){
            System.out.println(jobtitle);
        }
    }

    public List<Actor> getActorsByMovie(String movieId, int size, String sortBy) {
        if (null == movieId) {
            return null;
        }
        Movie movie = this.movieMap.get(Integer.parseInt(movieId));
        if (null == movie) {
            return null;
        }
        List<Actor> actors = new ArrayList<>();
        for (Integer actorId : movie.getActors()) {
            Actor actor = this.actorMap.get(actorId);
            if (null != actor) {
                actors.add(actor);
            }
        }

        // sort actors by sortBy method
        actors.sort((a1, a2) -> Double.compare(a2.getAverageRating(), a1.getAverageRating()));

        if (actors.size() > size) {
            return actors.subList(0, size);
        }
        return actors;
    }

    // get top N movies order by sortBy method
    public List<Movie> getMovies(int size, String sortBy) {
        List<Movie> movies = new ArrayList<>(movieMap.values());
        switch (sortBy) {
            case "rating":
                movies.sort((m1, m2) -> Double.compare(m2.getAverageRating(), m1.getAverageRating()));
                break;
            case "releaseYear":
                movies.sort((m1, m2) -> Integer.compare(m2.getReleaseYear(), m1.getReleaseYear()));
                break;
            default:
        }

        if (movies.size() > size) {
            return movies.subList(0, size);
        }
        return movies;
    }

    // get movie object by movie id
    public Movie getMovieById(int movieId) {
        return this.movieMap.get(movieId);
    }

    // get user object by user id
    public User getUserById(int userId) {
        return this.userMap.get(userId);
    }

    // get actor object by actor id
    public Actor getActorById(int actorId) {
        return this.actorMap.get(actorId);
    }

    // get actor object by actor name
    public Actor getActorByName(String actorName) {
        for (Actor actor : this.actorMap.values()) {
            if (actor.getName().equals(actorName)) {
                return actor;
            }
        }
        return null;
    }

    public List<Actor> getActors(int size, String SortBy) {
        List<Actor> actors = new ArrayList<>(actorMap.values());
        switch (SortBy) {
            case "rating":
                actors.sort((a1, a2) -> Double.compare(a2.getAverageRating(), a1.getAverageRating()));
                break;
            default:
        }

        if (actors.size() > size) {
            return actors.subList(0, size);
        }
        return actors;
    }

    // get director object by director id
    public Director getDirectorById(int directorId) {
        return this.directorMap.get(directorId);
    }

    // get director object by director name
    public Director getDirectorByName(String directorName) {
        for (Director director : this.directorMap.values()) {
            if (director.getName().equals(directorName)) {
                return director;
            }
        }
        return null;
    }

    public List<Director> getDirectors(int size, String SortBy) {
        List<Director> directors = new ArrayList<>(directorMap.values());
        switch (SortBy) {
            case "rating":
                directors.sort((d1, d2) -> Double.compare(d2.getAverageRating(), d1.getAverageRating()));
                break;
            default:
        }

        if (directors.size() > size) {
            return directors.subList(0, size);
        }
        return directors;
    }
}
