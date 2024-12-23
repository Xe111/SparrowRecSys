# replace &apos; with ' in actors.csv and directors.csv

def main():
    webroot_path='/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot'
    actor_list_path=webroot_path+'/sampledata/actors.csv'
    director_list_path=webroot_path+'/sampledata/directors.csv'

    with open(actor_list_path,'r') as f:
        lines=f.readlines()
        new_lines = [lines[0]]  # keep the header
        for line in lines[1:]:
            if '&apos;' in line:
                line = line.replace('&apos;', '\'')
            new_lines.append(line)
    with open(actor_list_path,'w') as f:
        f.writelines(new_lines)

    with open(director_list_path,'r') as f:
        lines=f.readlines()
        new_lines = [lines[0]]
        for line in lines[1:]:
            if '&apos;' in line:
                line = line.replace('&apos;', '\'')
            new_lines.append(line)
    with open(director_list_path,'w') as f:
        f.writelines(new_lines)

            
 


if __name__ == '__main__':
    main()