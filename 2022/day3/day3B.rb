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

def findCommon(inputString1,inputString2,inputString3)

    for checkLetter in $priorityList do
        if inputString1.include? checkLetter
            if inputString2.include? checkLetter
                if inputString3.include? checkLetter
                    return checkLetter
                end
            end
        end
    end
end

i = 0

while i < data.length
    currentLine1 = data[i]
    currentLine2 = data[i+1]
    currentLine3 = data[i+2]

    totalScore += priorityCheck(findCommon(currentLine1,currentLine2,currentLine3))

    i += 3
end

puts totalScore