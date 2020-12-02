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

    dashPos = currentString.find("-")
    print("dashPos:",dashPos)

    first = currentString[0:dashPos:1]
    print("first:",first)

    second = currentString[dashPos+1:colonPos-2:1]
    print("second:",second)

    first = int(first) - 1
    second = int(second) - 1

    print("first:",first)
    print("second:",second)

    currentString = list(currentString)

    currentString = currentString[colonPos+2::]

    print("currentString:",currentString)

    if (searchLetter == currentString[first] and searchLetter != currentString[second]):
        total = total + 1

        print("first:", currentString[first])
        print("second:", currentString[second])
        print("VALID1")

    elif (searchLetter != currentString[first] and searchLetter == currentString[second]):
        total = total + 1

        print("firstStr:", currentString[first])
        print("secondStr:", currentString[second])
        print("VALID2")
        
    else:
        failed = failed + 1

        print("firstStr:", currentString[first])
        print("secondStr:", currentString[second])
        print("BAD")

    print("----------------------------------------------------------------------")

print("Task successful, total valid passwords:",total)
print("Invalid passwords:",failed)
print("----------------------------------------------------------------------")