import sys

def interpreter(input:str, output:bool):
    counterStorage: int = 0
    for i in input:
        if (counterStorage == 256 or counterStorage == -1):
            counterStorage = 0

        if i == 'i':
            counterStorage += 1
        elif i == 'd':
            counterStorage -= 1
        elif i == 's':
            counterStorage *= counterStorage
        elif i == 'o':
            print(str(counterStorage) + "\n" if not output else chr(counterStorage), end='')
        else:
            print("Illegal Symbol: " + i + " noticed")
            sys.exit(-1)

if __name__ == '__main__':
    print(len(sys.argv))
    if len(sys.argv) != 2 and (len(sys.argv) != 3):
        print("Illeagal commentline arguments")
        sys.exit(-1)
    if len(sys.argv) == 2:
        interpreter(sys.argv[1], False)
    elif len(sys.argv) == 3:
        interpreter(sys.argv[1], sys.argv[2] == "-s")
        
