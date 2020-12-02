import os
imp = os.path.join(os.path.dirname(__file__),"./OLD2017_input_day1.txt")

imp2 = open(imp,"+r").read()

previous = imp2[0]
total = 0

for x in range(0,len(imp2)):
    #print(imp2[x],x,len(imp2))

    if previous == imp2[x]:
        total = int(total) + int(imp2[x]) + int(previous)

        previous = imp2[x]

        print(total, previous, imp2[x])

        previous = imp2[x]