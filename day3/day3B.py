import os
imp = os.path.join(os.path.dirname(__file__),"./input_day3.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

import os
imp = os.path.join(os.path.dirname(__file__),"./input_day3.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

#print("-------------------------")
#print("ARRAY LENGTH:",len(imp2))
#print("First slot:",imp2[0])
#print("-------------------------")

totalTrees = 0

trees1 = 0
trees2 = 0
trees3 = 0
trees4 = 0
trees5 = 0

currentStep = 0
totalString = imp2[0]

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
        trees1 = trees1 + 1

    currentStep = currentStep + 1

    print(totalString)

print("Total trees detected:",trees1)

currentStep = 0
totalString = imp2[0]

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
        trees2 = trees2 + 1

    currentStep = currentStep + 3

    print(totalString)

print("Total trees detected:",trees2)


currentStep = 0
totalString = imp2[0]

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
        trees3 = trees3 + 1

    currentStep = currentStep + 5

    print(totalString)

print("Total trees detected:",trees3)

currentStep = 0
totalString = imp2[0]

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
        trees4 = trees4 + 1

    currentStep = currentStep + 7

    print(totalString)

print("Total trees detected:",trees4)

currentStep = 0
totalString = imp2[0]

for x in range(0,len(imp2),2):

    currentString = imp2[x]
    totalString=currentString

    #print("currentString:",currentString,"  currentStringLength:",len(currentString),"  currentStep:", currentStep,"  lengthTotalString:", len(totalString))

    while currentStep >= len(totalString):
        totalString = totalString + currentString
        #print("Added:",len(currentString))

    #print("lenthTotalString:",len(totalString),"currentStep:",currentStep)
    #print("------------------------------------------------------------------------------------------------------------------------------")

    if totalString[currentStep] == "#":
        trees5 = trees5 + 1

    currentStep = currentStep + 1

    print(totalString)

print("Total trees detected:",trees5)

totalTrees = trees1*trees2*trees3*trees4*trees5

print("FINAL TREES:",totalTrees)