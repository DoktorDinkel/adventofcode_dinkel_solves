import os
imp = os.path.join(os.path.dirname(__file__),"./input_day3.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

print("-------------------------")
print("ARRAY LENGTH:",len(imp2))
print("First slot:",imp2[0])
print("-------------------------")

currentStep = 0
currentString = ""
totalString = ""

for x in range(len(imp2)):

    currentString = imp2[x]

    print("  currentString:",currentString,"  currentStep:", currentStep,"  lengthTotalString:", len(totalString))

    if currentStep > len(totalString):
        totalString = totalString + currentString
        print("long")

    currentStep = currentStep + 3