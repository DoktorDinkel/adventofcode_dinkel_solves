data = File.readlines("input_day3.txt")

$priorityList = ('a'..'z').to_a + ('A'..'Z').to_a

totalScore = 0

def priorityCheck(letter)
    i = 1

    for priorityLetter in $priorityList do
        if priorityLetter == letter
            return i
        end

        i += 1
    end
end

def findCommon(inputString)
    firstHalf = inputString[0..(inputString.length/2)-1]
    secondHalf = inputString[inputString.length/2..-1]

    i = 0

    while i < firstHalf.length
        j = 0

        while j < secondHalf.length
            if firstHalf[i] == secondHalf[j]
                return secondHalf[j]
            end

            j += 1
        end

        i += 1
    end
end

for currentLine in data do
    totalScore += priorityCheck(findCommon(currentLine))
end

puts totalScore