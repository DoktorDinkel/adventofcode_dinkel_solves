import os
imp = os.path.join(os.path.dirname(__file__),"./input_day4.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n\n")

print("-------------------------------------------------------------------------")
print("Lenght:",len(imp2),"strings")

for x in range(len(imp2)):
    print(imp2[x])

print("")