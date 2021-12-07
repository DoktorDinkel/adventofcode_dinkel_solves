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

def oxygenCheck(oxyIndex, list) #oxyIndex går upp till 999 (100-1), inte 11 (12-1)????? hallå varför gjorde jag så
    i = 0

    ones = 0
    zeros = 0

    while i < list.length
        if list[i][oxyIndex] == "1" #måste kolla efter strings inte integers dummer
            ones += 1
        elsif list[i][oxyIndex] == "0"
            zeros += 1
        else
            puts "oxygenCheck: invalid input"
            puts "list[i][oxyindex] == 0 nor list[i][oxyindex] == 1:#{list[i][oxyIndex]}"
            puts i
            puts oxyIndex
            return
        end

        i += 1
    end

    if ones > zeros || ones == zeros
        return "one"
    elsif zeros > ones
        return "zero"
    else
        puts "oxygenCheck2: invalid input"
        return
    end
end

def co2Check(co2Index, list)
    i = 0

    ones = 0
    zeros = 0

    while i < list.length
        if list[i][co2Index] == "1"
            ones += 1
        elsif list[i][co2Index] == "0"
            zeros += 1
        else
            puts "co2Check: invalid input"
            return
        end

        i += 1
    end

    if ones < zeros
        return "one"
    elsif zeros < ones || ones == zeros
        return "zero"
    else
        puts "co2Check2: invalid input"
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

def oxyFunction(oxygenDiagnostics)

    i = 0

    while i < oxygenDiagnostics.length
        
        if removeElement(oxygenDiagnostics, i, 1).class == String || removeElement(oxygenDiagnostics, i, 0).class == String
            return removeElement(oxygenDiagnostics, i, 1).to_s

        elsif removeElement(oxygenDiagnostics, i, 1).class == Array || removeElement(oxygenDiagnostics, i, 0).class == Array

            if oxygenCheck(i, oxygenDiagnostics) == "one"
                puts "one was returned; removing elements"
                oxygenDiagnostics = removeElement(oxygenDiagnostics, i, 0)

            elsif oxygenCheck(i, oxygenDiagnostics) == "zero"
                puts "zero was returned; removing elements"
                oxygenDiagnostics = removeElement(oxygenDiagnostics, i, 1)

            else
                puts "oxyFunction: invalid input"
                return
            end
        else
            puts "oxyFunction2: invalid input"
            puts "1:#{removeElement(oxygenDiagnostics, i, 1).class} 0:#{removeElement(oxygenDiagnostics, i, 0).class}"
            return
        end

        i += 1
    end

    return removeElement(oxygenDiagnostics, i, 1).to_s
end

def co2Function(co2Diagnostics)

    i = 0

    while i < co2Diagnostics.length
        
        if removeElement(co2Diagnostics, i, 1).class == String || removeElement(co2Diagnostics, i, 0).class == String
            return removeElement(co2Diagnostics, i, 1).to_s

        elsif removeElement(co2Diagnostics, i, 1).class == Array || removeElement(co2Diagnostics, i, 0).class == Array

            if co2Check(i, co2Diagnostics) == "one"
                puts "one was returned; removing elements"
             co2Diagnostics = removeElement(co2Diagnostics, i, 0)

            elsif co2Check(i, co2Diagnostics) == "zero"
                puts "zero was returned; removing elements"
             co2Diagnostics = removeElement(co2Diagnostics, i, 1)

            else
                puts "co2Function: invalid input"
                return
            end
        else
            puts "co2Function2: invalid input"
            puts "1:#{removeElement(co2Diagnostics, i, 1).class} 0:#{removeElement(co2Diagnostics, i, 0).class}"
            return
        end

        i += 1
    end

    return removeElement(co2Diagnostics, i, 1).to_s
end

oxyDec = binToDec(oxyFunction(oxygenDiagnostics))
co2Dec = binToDec(co2Function(co2Diagnostics))

sum = oxyDec * co2Dec
puts sum