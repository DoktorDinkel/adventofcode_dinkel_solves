import os
import math

imp = os.path.join(os.path.dirname(__file__),"./OLD_input_day1.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

print("-------------------------")
print("ARRAY LENGTH:",len(imp2))
print("-------------------------")

finalFinal = 0

for x in range(len(imp2)):
    final = (math.floor(int(imp2[x])/3))-2

    finalFinal = int(finalFinal)+final

print("Success:", finalFinal)