import os
imp = os.path.join(os.path.dirname(__file__),"./input_day4.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n\n")

matches = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]
totalValidish = 0
tempValid = 0
totalValid = 0
offset = 4

print("-------------------------------------------------------------------------")
print("Lenght:",len(imp2),"strings")

for x in range(len(imp2)):
    currentString = imp2[x]

    if all(x in currentString for x in matches):
        print("FULL STRING:",currentString)
        print("")
        totalValidish = totalValidish + 1

        print("Passport has all fields")
        print("Passport met requirements")
        print("")

        #################### byr-function ####################

        byrPos = currentString.find(matches[0])

        byr = currentString[byrPos+offset:byrPos+offset+4] #"+4" is birth year length, like 1969

        print("DETECTED BYR:",byr)
        print("")

        if int(byr) >= 1920 and int(byr) <= 2002:
            tempValid = tempValid + 1

        #################### iyr-function ####################

        iyrPos = currentString.find(matches[1])

        iyr = currentString[iyrPos+offset:iyrPos+offset+4]

        print("DETECTED IYR:",iyr)
        print("")

        if int(iyr) >= 2010 and int(iyr) <= 2020:
            tempValid = tempValid + 1

        #################### eyr-function ####################

        eyrPos = currentString.find(matches[2])

        eyr = currentString[eyrPos+offset:eyrPos+offset+4]

        print("DETECTED EYR:",eyr)
        print("")

        if int(eyr) >= 2020 and int(eyr) <= 2030:
            tempValid = tempValid + 1

        #################### hgt-function ####################

        hgtPos = currentString.find(matches[3])

        #cm

        if currentString.find("cm") == hgtPos + offset + 3 or hgtPos + offset + 4:

            cmPos = currentString[hgtPos:len(currentString)].find("cm")
            print("cmPos check-area",currentString[hgtPos:len(currentString)])

            cm = currentString[hgtPos+offset:cmPos]
            print("cm:",cm)
            print("currentString:",currentString)
            print("cmPos:",cmPos)
            print("hgtPos:",hgtPos)

            if int(cm) >= 150 and int(cm) <= 193:
                tempValid = tempValid + 1



    else:
        print("Passport did not reach requirements")

    print("-------------------------------------------------------------------------")

print("Total valid-ish:",totalValidish)
print("Temp valid",tempValid)