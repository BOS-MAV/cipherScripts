import csv, sys,getopt

def main(argv):
    inputfile = ''
    outputfile = ''
    try:
        opts,args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
    except getopt.GetoptError:
        print("changeDelimi -i <inputfile> -o <outputfile>")
        sys.exit(2)
    for opt, arg in opts:
        if opt =='-h':
            print("changeDelimi -i <inputfile> -o <outputfile>")
            sys.exit()
        elif opt in ("-i","--ifile"):
            inputfile = arg
        elif opt in ("-o","--ofile"):
            outputfile = arg
    reader=csv.reader(open(inputfile,"r"),delimiter = ',')
    writer = csv.writer(open(outputfile,'w'),delimiter=";")
    writer.writerows(reader)
    print("Delimiter changed.")
    
if __name__=="__main__":
    main(sys.argv[1:])
