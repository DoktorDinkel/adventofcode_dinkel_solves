data = File.readlines("input_day2.txt")

# A/X = Rock
# B/Y = Paper
# C/Z = Scissors

# Att välja X/rock ger 1
# Att välja Y/paper ger 2
# Att välja Z/scissors ger 3

# 0 poäng för att förlora
# 3 poäng för oavgjort
# 6 poäng för vinst

totalPoints = 0

def convert(letter)
    if letter == "A"
        return "rockOpponent"
    elsif letter == "B"
        return "paperOpponent"
    elsif letter == "C"
        return "scissorsOpponent"
    elsif letter == "X"
        return "rockPlayer"
    elsif letter == "Y"
        return "paperPlayer"
    elsif letter == "Z"
        return "scissorsPlayer"
    else
        raise "Felaktig input för bokstavsomvandling"
    end
end

def resultCalc(opponent,player)
    if player == "rockPlayer"
        answerPoint = 1

        if opponent == "rockOpponent"
            return 3 + answerPoint
        elsif opponent == "paperOpponent"
            return 0 + answerPoint
        elsif opponent == "scissorsOpponent"
            return 6 + answerPoint
        else
            raise "FEL!"
        end
    elsif player == "paperPlayer"
        answerPoint = 2

        if opponent == "rockOpponent"
            return 6 + answerPoint
        elsif opponent == "paperOpponent"
            return 3 + answerPoint
        elsif opponent == "scissorsOpponent"
            return 0 + answerPoint
        else
            raise "FEL!"
        end
    elsif player == "scissorsPlayer"
        answerPoint = 3

        if opponent == "rockOpponent"
            return 0 + answerPoint
        elsif opponent == "paperOpponent"
            return 6 + answerPoint
        elsif opponent == "scissorsOpponent"
            return 3 + answerPoint
        else
            raise "FEL!"
        end
    else
        raise "FEL!"
    end
end

i = 0

while i < data.length
    puts "-----------------------"
    puts i
    currentLine = data[i-1]
    puts currentLine
    opponentLetter = currentLine[0]
    puts opponentLetter
    opponentAnswer = convert(opponentLetter)
    puts opponentAnswer

    playerLetter = currentLine[2]
    puts playerLetter
    playerAnswer = convert(playerLetter)
    puts playerAnswer

    currentPoints = resultCalc(opponentAnswer,playerAnswer)
    puts currentPoints

    totalPoints = totalPoints + currentPoints
    puts totalPoints

    i += 1
end

puts totalPoints

=begin

GAMMAL KOD!

totalScore = 0

def outcomeCalculation(answer1,answer2)
    if answer1 == "A" && answer2 == "X"
        return 3+1
        
    elsif answer1 == "A" && answer2 == "Y"
        return 6+2

    elsif answer1 == "A" && answer2 == "Z"
        return 0+3
    puts "loss"
    elsif answer1 == "B" && answer2 == "X"
        return 0+1
        
    elsif answer1 == "B" && answer2 == "Y"
        return 3+2
        
    elsif answer1 == "B" && answer2 == "Z"
        return 6+3
        
    elsif answer1 == "C" && answer2 == "X"
        return 6+1
        
    elsif answer1 == "C" && answer2 == "Y"
        return 0+2
        
    elsif answer1 == "C" && answer2 == "Z"
        return 3+3
        
    else
        raise "Felaktig input till jämförelse"
    end
end

for i in 0..data.length do
    puts "----------"
    puts i
    puts data[i-1]
    puts data[i-1][0]
    puts data[i-1][2]
    puts outcomeCalculation(data[i-1][0],data[i-1][2])
    outcomeCalculation(data[i-1][0],data[i-1][2])

    totalScore += outcomeCalculation(data[i-1][0],data[i-1][2])
    puts totalScore
end

puts "------------------------"
puts totalScore
=end