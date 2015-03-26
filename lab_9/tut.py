def productTable(x,y):
    return [[(r*c) for c in range (0,y)] for r in range(0,x)]


def writeToFile(filename):

    # --- open file
    # file = open('foo.txt', 'w')
    # file.write(...)
    # --- needs to explicitly close the file
    # file.close()

    # or use the with keyword

    # automatically closes the filehandle outside the indented block
    with open(filename, 'w') as file:
        file.write('Python is the greatest language!')
        file.write('\n')
        file.write('Yeah its great!!')
        file.write('\n')

def readChars(filename,num):
    with open(filename, 'r') as file:
        x = file.read(num)
        print "Read String is: ", x

        print "Current file position: ", file.tell()

        file.seek(0)

        print "Again read String is: ", file.read(num)

        file.seek(0)

        list_of_content = file.readlines()
        print "The content of the file is :"
        print list_of_content


if __name__ == "__main__" :
    #read input
    #print "Enter the dimension of the table (separated by a comma):"
    #usr_input = raw_input()
    #x,y= usr_input.split(',')

    #print productTable(int(x),int(y))




    writeToFile('foo.txt')
    readChars('foo.txt', 10)
