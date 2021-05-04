import csv, glob, os

def main():
    os.chdir("csv2cd ")
    for file in glob.glob("*.csv"):
        inputfile = file
        outputfile = os.path.splitext(file)[0]+".txt"
        try:
            reader=csv.reader(open(inputfile,"r"),delimiter = ',')
        except:
            continue
        try:
            writer = csv.writer(open(outputfile,'w'),delimiter=";")
        except:
            continue
        try:
            writer.writerows(reader)
        except:
            continue
        print("Delimiter changed for file "+file)
    
if __name__=="__main__":
    main()
