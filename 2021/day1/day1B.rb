measurements = File.readlines("input_day1.txt")

def createSum(arrayIndex, measurements)
    i = 0
    sum = 0
    while i <= 2
        sum = sum + measurements[arrayIndex+i].to_i
        i += 1
    end

    return sum
end

arrayIndex = 1
answer = 0
previousSum = createSum(0, measurements)

while arrayIndex - 2 < measurements.length
    currentSum = createSum(arrayIndex, measurements)
    if previousSum < currentSum
        answer += 1
    end

    previousSum = currentSum
    arrayIndex += 1
end

puts answer
#create sums of three, compare the sums and count as in the previous puzzle, stop when there aren't enough numbers to create a sum