numbers = list(range(197487,673251))

#print(numbers[673251-197487-1])

for x in range(197487,673251):
    currentInt = numbers[x]
    print(currentInt)

    for y in range(len(currentInt)):
        chars = currentInt[y]
        