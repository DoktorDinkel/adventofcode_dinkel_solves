measurements = File.readlines("input_day1.txt")

def createSum(arrayIndex)
    i = 0
    sum = 0
    while i <= 2
        sum = sum + measurements[arrayIndex+i]
        i += 1
    end

    return sum
end



#create sums of three, compare the sums and count as in the previous puzzle, stop when there aren't enough numbers to create a sum