import os
imp = os.path.join(os.path.dirname(__file__),"./input_day2.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

print("-------------------------")
print("ARRAY LENGTH:",len(imp2))
print("First slot:",imp2[0])
print("-------------------------")

total = 0
failed = 0

for x in range(len(imp2)):

    currentString = imp2[x]
    print("currentString:",currentString)
    
    colonPos = currentString.find(":")
    print("colonPos:",colonPos)

    searchLetter = currentString[colonPos-1]
    print("searchLetter:",searchLetter)

    letterInstances = currentString.count(searchLetter, colonPos+1)
    print("letterInstances:",letterInstances)

    dashPos = currentString.find("-")
    print("dashPos:",dashPos)

    minimum = currentString[0:dashPos:1]
    print("minimum:",minimum)

    maximum = currentString[dashPos+1:colonPos-2:1]
    print("maximum:",maximum)

    if letterInstances >= int(minimum) and letterInstances <= int(maximum):
        total = total+1
        print("current total:",total)

    else:
        failed = failed+1
        print("current failed:",failed)

    print("----------------------------------------------------------------------")

print("Task successful, total valid passwords:",total)
print("Invalid passwords:",failed)
print("----------------------------------------------------------------------")