# 根据 ratings 和 actor_director ，打分生成actor rating 和 director rating
import os

def generate_actor_rating(actor_director_path,ratings_path,dest_path):
    ratings_lines = []
    actor_director_lines = []
    
    with open(ratings_path,'r') as f:
        ratings_lines = f.readlines()
    ratings_lines = ratings_lines[1:]
    
    print("ratings_lines done")
    print("rating_lines_len:",len(ratings_lines)) 

    with open(actor_director_path,'r') as f:
        actor_director_lines = f.readlines()
    actor_director_lines = actor_director_lines[1:]

    print("actor_director_lines done")
    print("actor_director_lines_len:",len(actor_director_lines))

    actor_set = set()
    for line in actor_director_lines:
        actors1 = line.split(',')[1]
        actors = actors1.split('|')
        for actor in actors:
            actor_set.add(actor)
    sorted(actor_set)
    actor_set.remove('')

    with open (dest_path+'/actors.csv','w') as f:
        f.write('actorId,actorName\n')
        for index,actor in enumerate(actor_set):
            f.write(str(index)+','+actor+'\n')
        
    print("actor_set done")
    print("actor_set_len:",len(actor_set))
    print("generate actor.csv done")


    actor_list = list(actor_set)
    actor_director_movieId = []
    actor_director_actors1 = []
    for line in actor_director_lines:
        movieId,actors1 = line.split(',')[0],line.split(',')[1]
        actor_director_movieId.append(movieId)
        actor_director_actors1.append(actors1)

    with open (dest_path+'/actor_ratings.csv','w') as f:
        f.write('userId,actorId,rating,timestamp\n')
        for line in ratings_lines:
            userId,movieId,rating,timestamp = line.split(',')
            movieId = movieId.strip()
            print("userId:",userId)
            if movieId in actor_director_movieId:
                actors1 = actor_director_actors1[actor_director_movieId.index(movieId)]
                actors = actors1.split('|')
                for actor in actors:
                    if actor != '':
                        f.write(userId+','+str(actor_list.index(actor))+','+rating+','+timestamp)


    print("generate actor_ratings.csv done")

def generate_director_rating(actor_director_path,ratings_path,dest_path):
    ratings_lines = []
    actor_director_lines = []
    
    with open(ratings_path,'r') as f:
        ratings_lines = f.readlines()
    ratings_lines = ratings_lines[1:]
    
    print("ratings_lines done")
    print("rating_lines_len:",len(ratings_lines)) 

    with open(actor_director_path,'r') as f:
        actor_director_lines = f.readlines()
    actor_director_lines = actor_director_lines[1:]

    print("actor_director_lines done")
    print("actor_director_lines_len:",len(actor_director_lines))

    director_set = set()
    for line in actor_director_lines:
        directors1 = line.split(',')[2]
        directors = directors1.split('|')
        for director in directors:
            director = director.strip()
            director_set.add(director)
    sorted(director_set)
    director_set.remove('')

    with open (dest_path+'/directors.csv','w') as f:
        f.write('directorId,directorName\n')
        for index,director in enumerate(director_set):
            f.write(str(index)+','+director+'\n')
        
    print("director_set done")
    print("director_set_len:",len(director_set))
    print("generate director.csv done")


    director_list = list(director_set)
    actor_director_movieId = []
    actor_director_directors1 = []
    for line in actor_director_lines:
        movieId,directors1 = line.split(',')[0],line.split(',')[2]
        actor_director_movieId.append(movieId)
        actor_director_directors1.append(directors1)

    with open (dest_path+'/director_ratings.csv','w') as f:
        f.write('userId,directorId,rating,timestamp\n')
        for line in ratings_lines:
            userId,movieId,rating,timestamp = line.split(',')
            movieId = movieId.strip()
            print("userId:",userId)
            if movieId in actor_director_movieId:
                directors1 = actor_director_directors1[actor_director_movieId.index(movieId)]
                directors = directors1.split('|')
                for director in directors:
                    director = director.strip()
                    if director != '':
                        f.write(userId+','+str(director_list.index(director))+','+rating+','+timestamp)


    print("generate director_ratings.csv done")



def main():
    sampledata_path='/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot/sampledata'
    ratings_path=sampledata_path+'/ratings.csv'
    actor_director_path=sampledata_path+'/actor_director.csv'

    #generate_actor_rating(actor_director_path,ratings_path,sampledata_path)
    generate_director_rating(actor_director_path,ratings_path,sampledata_path)


if __name__ == '__main__':
    main()