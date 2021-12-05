diagnostics = File.readlines("input_day3.txt")

def binToDec(binaryNum)
    i = 0
    binaryValue = 1
    decValue = 0

    binaryNum = binaryNum.to_s.reverse

    while i < binaryNum.length
        if binaryNum[i,1] == "1"
            decValue = decValue + binaryValue
        end

        binaryValue = binaryValue * 2
        i +=1
    end

    return decValue
end

def countAndAssign(binIndex, list)
    i = 0
    ones = 0
    zeros = 0

    gammaOut = 0
    epsilonOut = 0

    while i < list.length
        currentBin = list[i]
        #puts "binIndex: #{binIndex}"
        #puts "currentBin.to_s[binIndex]: #{currentBin.to_s[binIndex]}"
        if currentBin.to_s[binIndex] == "1"
            ones += 1
            #puts "one"
        else
            zeros += 1
            #puts "zero"
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

puts "diagnostics[0].length: #{diagnostics[0].chomp.length}"
while i < diagnostics[0].chomp.length
    gammaOut, epsilonOut = countAndAssign(i, diagnostics)
    
    #puts gammaOut
    #puts epsilonOut
    #puts i

    gammaBin[i] = gammaOut.to_s
    epsilonBin[i] = epsilonOut.to_s

    i += 1
end

puts "executed column operation #{i} times."

if gammaBin.length == 12 and epsilonBin.length == 12
    puts "output strings have the same lengths as the amount of columns in input, success!"
else
    puts "mismatched length of output and input!"
end 

puts "gammaBin:     #{gammaBin}"
puts "epsilonBin:   #{epsilonBin}"

gammaInt = binToDec(gammaBin)
epsilonInt = binToDec(epsilonBin)

puts gammaInt
puts epsilonInt

sum = gammaInt * epsilonInt

puts "final answer: #{sum}"