# this script is used to add main entity to the actor and director data
import json
import os


def addMainEntity(entityFolder, csv):

    newlines = []
    with open(csv, 'r') as f:
        csvData = f.readlines()
        for index, line in enumerate(csvData):
            if index == 0:
                if "birthDate" in line:
                    # already added main entity
                    return
                newlines.append(line.strip() + ",birthDate,jobTitle")
            else:
                items = line.strip().split(",")
                id = items[0]
                name = items[1]
                birthDate = ""
                jobTitle = ""
                if os.path.exists(entityFolder + "/" + id + ".json"):
                    with open(entityFolder + "/" + id + ".json", 'r') as f:
                        jsonFile = json.load(f)
                        if "mainEntity" in jsonFile:
                            mainEntity = jsonFile["mainEntity"]
                            if "birthDate" in mainEntity:
                                birthDate = mainEntity["birthDate"]
                            if "jobTitle" in mainEntity:
                                for indexJ, job in enumerate(mainEntity["jobTitle"]):
                                    if indexJ == 0:
                                        jobTitle = job
                                    else:
                                        jobTitle = jobTitle + "|" + job
                newline = line.strip() + "," + birthDate + "," + jobTitle
                #print(newline)
                print("Processed " + str(index) + " lines")
                newlines.append(newline)
        with open(csv, 'w') as f:
            for line in newlines:
                f.write(line + "\n")
                        
            

def main():
    webrootFolder = "/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot"
    actorFolder = webrootFolder + "/actors"
    directorFolder = webrootFolder + "/directors"
    csvFolder = webrootFolder + "/sampledata"
    actorCsv = csvFolder + "/actors.csv"
    directorCsv = csvFolder + "/directors.csv"

    addMainEntity(actorFolder, actorCsv)
    addMainEntity(directorFolder, directorCsv)






if __name__ == '__main__':
    main()


