diagnostics = File.readlines("input_day3.txt")

def binToDec(binaryNum)
    i = binaryNum.to_s.length
    puts i
    binaryValue = 1
    decValue = 0

    while i >= 0
        if binaryNum[i,1].to_i == 1
            decValue = decValue + binaryValue
            puts binaryNum[i,1]
            puts decValue
            puts binaryValue
            puts "---------------"
        elsif binaryNum[i,1].to_i == 0
            puts binaryNum[i,1]
            puts decValue
            puts binaryValue
            puts "---------------"
        end

        binaryValue = binaryValue * 2
        i -= 1
    end

    return decValue - 1
end

def countAndAssign(binIndex, list)
    i = 0
    ones = 0
    zeros = 0

    gammaOut = 0
    epsilonOut = 0

    while i <= list.length
        currentBin = list[i]
        if currentBin.to_s[binIndex] == 1
            ones += 1
        elsif
            zeros += 1
        else
            puts "invalid input"
            return
        end

        i += 1
    end

    if ones > zeros
        gammaOut = 1
    else
        epsilonOut = 1
    end

    return gammaOut, epsilonOut
end

i = 0
gammaBin = ""
epsilonBin = ""

while i <= diagnostics[0].length
    gammaOut, epsilonOut = countAndAssign(i, diagnostics)
    
    gammaBin[i] = gammaOut.to_s
    epsilonBin[i] = epsilonOut.to_s

    i += 1
end

puts gammaBin
puts epsilonBin
