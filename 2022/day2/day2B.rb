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

# X = förlust
# Y = oavgjort
# Z = vinst

totalPoints = 0

def convert(letter)
    if letter == "A"
        return "rockOpponent"
    elsif letter == "B"
        return "paperOpponent"
    elsif letter == "C"
        return "scissorsOpponent"
    elsif letter == "X"
        return "loss"
    elsif letter == "Y"
        return "draw"
    elsif letter == "Z"
        return "win"
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

def playerMoveCalc(opponentAnswer,necessaryOutcome)
    if necessaryOutcome == "loss"
        if opponentAnswer == "rockOpponent"
            playerAnswer = "scissorsPlayer"
        elsif opponentAnswer == "paperOpponent"
            playerAnswer = "rockPlayer"
        elsif opponentAnswer == "scissorsOpponent"
            playerAnswer = "paperPlayer"
        else
            raise "FEL!"
        end

    elsif necessaryOutcome == "draw"
        if opponentAnswer == "rockOpponent"
            playerAnswer = "rockPlayer"
        elsif opponentAnswer == "paperOpponent"
            playerAnswer = "paperPlayer"
        elsif opponentAnswer == "scissorsOpponent"
            playerAnswer = "scissorsPlayer"
        else
            raise "FEL!"
        end

    elsif necessaryOutcome == "win"
        if opponentAnswer == "rockOpponent"
            playerAnswer = "paperPlayer"
        elsif opponentAnswer == "paperOpponent"
            playerAnswer = "scissorsPlayer"
        elsif opponentAnswer == "scissorsOpponent"
            playerAnswer = "rockPlayer"
        else
            raise "FEL!"
        end

    else
        raise "FEL!"

    end

    return playerAnswer
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

    necessaryOutcomeLetter = currentLine[2]
    puts necessaryOutcomeLetter
    necessaryOutcome = convert(necessaryOutcomeLetter)
    puts necessaryOutcome

    playerAnswer = playerMoveCalc(opponentAnswer,necessaryOutcome)

    currentPoints = resultCalc(opponentAnswer,playerAnswer)
    puts currentPoints

    totalPoints = totalPoints + currentPoints
    puts totalPoints

    i += 1
end

puts totalPoints