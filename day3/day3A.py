import os
imp = os.path.join(os.path.dirname(__file__),"./input_day3.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

#print("-------------------------")
#print("ARRAY LENGTH:",len(imp2))
#print("First slot:",imp2[0])
#print("-------------------------")

currentStep = 0
totalString = imp2[0]
trees = 0

for x in range(len(imp2)):

    currentString = imp2[x]
    totalString=currentString

    #print("currentString:",currentString,"  currentStringLength:",len(currentString),"  currentStep:", currentStep,"  lengthTotalString:", len(totalString))

    while currentStep >= len(totalString):
        totalString = totalString + currentString
        #print("Added:",len(currentString))

    #print("lenthTotalString:",len(totalString),"currentStep:",currentStep)
    #print("------------------------------------------------------------------------------------------------------------------------------")

    if totalString[currentStep] == "#":
        trees = trees + 1

    currentStep = currentStep + 3

    print(totalString)

print("Total trees detected:",trees)