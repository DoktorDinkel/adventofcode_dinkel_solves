import os
imp = os.path.join(os.path.dirname(__file__),"./input_day5.txt")

imp2 = open(imp,"+r").read()
imp2 = imp2.split("\n")

higherBound = 127
lowerBound = 0

for x in range(len(imp2)):
    currentString = imp2[x]
    #print(currentString)

    for y in range(7):
        currentChar = currentString[y]
        print(currentChar)

        if currentChar == "F":   #front = lower half of 128 (0 to 63)
            difference = higherBound - lowerBound
            higherBound = higherBound - difference / 2
            print(difference, lowerBound, higherBound)

        if currentChar == "B":
            difference = higherBound - lowerBound
