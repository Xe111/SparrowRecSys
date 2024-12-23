from PyMovieDb import IMDB
import json
import os


def get_actor_director_dict__by_id(imdb_id):
    imdb=IMDB()
    res=imdb.get_by_id('tt'+imdb_id)
    json_res=json.loads(res)
    # check if json.actor or json.director is None
    return json_res.get("actor", []), json_res.get("director", [])
    
def actor_director_dict_to_str(actor_dict, director_dict):
    actor = ""
    director = ""
    for actor_item in actor_dict:
        actor += actor_item["name"] + "|"
    for director_item in director_dict:
        director += director_item["name"] + "|"

    # remove the last "|"
    if len(actor) > 0:
        actor = actor[:-1]
    if len(director) > 0:
        director = director[:-1]
    return actor, director


if __name__ == '__main__':
    data_path = "/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot/sampledata/"
    link_path = data_path + "links.csv"
    movie_path = data_path + "movies.csv"

    

    actor_director_path = data_path + "actor_director.csv"

    lines_exist = 0
    if os.path.exists(actor_director_path):
        with open(actor_director_path, 'r') as actor_director_file:
            lines_exist = len(actor_director_file.readlines())

    if lines_exist == 0:
        actor_director_file = open(actor_director_path, 'w')
    else:
        actor_director_file = open(actor_director_path, 'a')
        
    if lines_exist == 0:
        actor_director_file.write("movieId,actor,director\n")
    
    with open(link_path, 'r') as link_file:
        
        if lines_exist > 0:
            for index in range(lines_exist):
                link_file.readline()

        for index, line in enumerate(link_file):
            if index == 0:
                continue
            #if index > 10:
                
            line = line.strip()
            items = line.split(",")
            movie_id = items[0]
            imdb_id = items[1]
            actor_dict, director_dict = get_actor_director_dict__by_id(imdb_id)
            actor, director = actor_director_dict_to_str(actor_dict, director_dict)
            actor_director_file.write(movie_id + "," + actor + "," + director + "\n")

            print("{}. ".format(index) + movie_id + "," + actor + "," + director + " is done.")

    
