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
            print(str(counterStorage) + "\n" if not bool else chr(counterStorage), end='')
        else:
            print("Illegal Symbol: " + i + " noticed")
            sys.exit(-1)

if __name__ == '__main__':
    if len(sys.argv) > 3 and sys.argv[2][0] != 's':
        print("Illeagal commentline arguments")
        sys.exit(-1)

    interpreter(sys.argv[1], sys.argv[2][0] == 's')