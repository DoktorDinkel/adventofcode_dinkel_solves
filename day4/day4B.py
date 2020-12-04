import os
imp = os.path.join(os.path.dirname(__file__),"./input_day4.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n\n")

matches = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]
totalValidish = 0

print("-------------------------------------------------------------------------")
print("Lenght:",len(imp2),"strings")

for x in range(len(imp2)):
    currentString = imp2[x]
    print(currentString)

    if all(x in currentString for x in matches):
        print("Passport has all fields")
        totalValidish = totalValidish + 1

        currentString.find(matches[0]) #byr

    print("-------------------------------------------------------------------------")

print("Total valid:",totalValidish)