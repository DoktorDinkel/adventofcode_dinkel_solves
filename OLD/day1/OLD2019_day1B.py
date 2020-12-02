import os
import math

imp = os.path.join(os.path.dirname(__file__),"./OLD_input_day1.txt")

imp2 = open(imp,"+r").read()

imp2 = imp2.split("\n")

print("-------------------------")
print("ARRAY LENGTH:",len(imp2))
print("-------------------------")
#(math.floor(int(imp2[x])/3))-2

FINAL = 0
finalFinal = 0
additional = 100

for x in range(len(imp2)):

    final = (math.floor(int(imp2[x])/3))-2
    print("-------------------------")
    print("final:",final)

    while additional > 0:

        additional = (math.floor(final/3))-2
        print("additional:",additional)
        finalFinal = additional+finalFinal
        print("finalFinal:",finalFinal)

    finalFinalFinal = finalFinal+final
    print("finalFinalFinal:",finalFinalFinal)

    FINAL = finalFinalFinal+FINAL
    print("FINAL:",FINAL)
    print("-------------------------")

print("Success:",FINAL)