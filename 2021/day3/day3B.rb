diagnostics = File.readlines("input_day3.txt")

oxygenDiagnostics = diagnostics
co2Diagnostics = diagnostics

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

def oxygenCheck(oxyIndex, list)
    i = 0

    ones = 0
    zeros = 0

    while i < list.length
        if list[i][oxyIndex] == 1
            ones += 1
        elsif list[i][oxyIndex] == 0
            zeros += 1
        else
            puts "invalid input"
            return
        end

        i += 1
    end

    if ones > zeros || ones == zeros
        return "one"
    elsif zeros > ones
        return "zero"
    else
        puts "invalid input"
        return
    end
end

def co2Check(co2Index, list)
    i = 0

    ones = 0
    zeros = 0

    while i < list.length
        if list[i][co2Index] == 1
            ones += 1
        elsif list[i][co2Index] == 0
            zeros += 1
        else
            puts "invalid input"
            return
        end

        i += 1
    end

    if ones < zeros
        return "one"
    elsif zeros < ones || ones == zeros
        return "zero"
    else
        puts "invalid input"
        return
    end
end

def removeElement(list, elementIndex, removeValue)
    i = 0

    while i < list.length && list.length > 1
        if list[0][elementIndex] == removeValue
            list.delete_at(i)
            i = i - 1 # MAYBE DELETE THIS???? IDK MAYBE TIME WILL HAVE TO TELL YOU INSHALLAH REMOVE IT
        end

        i += 1
    end

    return list
end

def oxyFunction()

    i = 0

    while i < oxygenDiagnostics.length
        
        if removeElement(oxygenDiagnostics, i, 1).class == "String" || removeElement(oxygenDiagnostics, i, 0).class == "String"
            return removeElement(oxygenDiagnostics, i, 1).to_s

        elsif removeElement(oxygenDiagnostics, i, 1).class == "Array" || removeElement(oxygenDiagnostics, i, 0).class == "Array"

            if oxygenCheck(i, oxygenDiagnostics) == "one"
                puts "one was returned; removing elements"
                oxygenDiagnostics = removeElement(oxygenDiagnostics, i, 0)

            elsif oxygenCheck(i, oxygenDiagnostics) == "zero"
                puts "zero was returned; removing elements"
                oxygenDiagnostics = removeElement(oxygenDiagnostics, i, 1)

            else
                puts "invalid input"
                return
            end
        else
            puts "invalid input"
            return
        end

        i += 1
    end

    return removeElement(oxygenDiagnostics, i, 1).to_s
end

def co2Function()

    i = 0

    while i < co2Diagnostics
        
        if removeElement(co2Diagnostics, i, 1).class == "String" || removeElement(co2Diagnostics, i, 0).class == "String"
            return removeElement(co2Diagnostics, i, 1).to_s

        elsif removeElement(co2Diagnostics, i, 1).class == "Array" || removeElement(co2Diagnostics, i, 0).class == "Array"

            if co2Check(i, co2Diagnostics) == "one"
                puts "one was returned; removing elements"
             co2Diagnostics = removeElement(co2Diagnostics, i, 0)

            elsif co2Check(i, co2Diagnostics) == "zero"
                puts "zero was returned; removing elements"
             co2Diagnostics = removeElement(co2Diagnostics, i, 1)

            else
                puts "invalid input"
                return
            end
        else
            puts "invalid input"
            return
        end

        i += 1
    end

    return removeElement(co2Diagnostics, i, 1).to_s
end

oxyDec = binToDec(oxyFunction)
co2Dec = binToDec(co2Function)

sum = oxyDec * co2Dec
puts sum