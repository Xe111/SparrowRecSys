from PyMovieDb import IMDB
from urllib import request
import json
import os

def test():
    imdb=IMDB()
    person1="Mimi Rogers"
    person2="John Halas"

    personinfo1 = imdb.person_by_name(person1)
    personinfo2 = imdb.person_by_name(person2)
    
    with open('person1.json', 'w') as f:
        f.write(personinfo1)

    with open('person2.json', 'w') as f:
        f.write(personinfo2)

    person1_json = json.loads(personinfo1)
    person2_json = json.loads(personinfo2)
    request.urlretrieve(person1_json['image'], 'person1.jpg')
    request.urlretrieve(person2_json['image'], 'person2.jpg')
def main():
    webroot_path='/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot'
    actor_info_path=webroot_path+'/actors'
    director_info_path=webroot_path+'/directors'

    actor_list_path=webroot_path+'/sampledata/actors.csv'
    director_list_path=webroot_path+'/sampledata/directors.csv'

    if not os.path.exists(actor_info_path):
        os.makedirs(actor_info_path)
    if not os.path.exists(director_info_path):
        os.makedirs(director_info_path)

    actors=dict()
    directors=dict()
    with open(actor_list_path,'r') as f:
        lines=f.readlines()
        for line in lines[1:]:
            actor=line.split(',')[1]
            actor=actor.strip()
            actorId=line.split(',')[0]
            actors[actor]=actorId
    
    with open(director_list_path,'r') as f:
        lines=f.readlines()
        for line in lines[1:]:
            director=line.split(',')[1]
            director=director.strip()
            directorId=line.split(',')[0]
            directors[director]=directorId

    #print("actors:",actors)
    #print("directors:",directors)


    imdb = IMDB()
    if 0:
        for actor in actors:
            actorId=actors[actor]
            if os.path.exists(actor_info_path+'/'+actorId+'.json'):
                continue
    
            print("acquiring actor info for:",actor)

            # actor_info = imdb.person_by_name(actor) index out of range
            try:
                actor_info = imdb.person_by_name(actor)
            except:
                print("error acquiring actor info for:",actor)
                continue
            with open(actor_info_path+'/'+actorId+'.json','w') as f:
                f.write(actor_info)
            print("json done")
            # get actor image
            actor_json = json.loads(actor_info)
            if 'image' in actor_json:
                image_url = actor_json['image']
                #download image
                request.urlretrieve(image_url, actor_info_path+'/'+actorId+'.jpg')
            print("image done")
    if 1:
        for director in directors:
            directorId=directors[director]
            if os.path.exists(director_info_path+'/'+directorId+'.json'):
                continue
            print("acquiring director info for:",director)
            try:
                director_info = imdb.person_by_name(director)
            except:
                print("error acquiring director info for:",director)
                continue
            with open(director_info_path+'/'+directorId+'.json','w') as f:
                f.write(director_info)
            print("json done")
            # get director image
            director_json = json.loads(director_info)
            if 'image' in director_json:
                image_url = director_json['image']
                #download image
                request.urlretrieve(image_url, director_info_path+'/'+directorId+'.jpg')
            print("image done")
            
            
    

if __name__ == '__main__':
    #test()
    main()