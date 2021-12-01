import os
imp = os.path.join(os.path.dirname(__file__),"./input_day1.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

print("-------------------------")
print("ARRAY LENGTH:",len(imp2))
print("FIRST NUMBER:",imp2[0])
print("-------------------------")

for x in range(len(imp2)):
    primary = imp2[x]

    for y in range(len(imp2)):
        secondary = imp2[y]

        total = int(primary)+int(secondary)
        print(primary,secondary,total)

        if total == 2020:
            finalTotal = total
            finalPrimary = primary
            finalSecondary = secondary
            

print("Success!")
print(finalTotal)
print(finalPrimary,"and",finalSecondary)

answer = int(finalPrimary)*int(finalSecondary)
print("ANSWER:",answer)