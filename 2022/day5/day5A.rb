# Very useful! https://linuxhint.com/ruby-array-delete-element/

data = File.readlines("input_day5.txt")

#         TOP                       BOTTOM    
column9 =                 ["C","H","F","J"] # ENDS HERE
column8 =                     ["G","L","N"]
column7 =             ["V","Z","C","G","L"]
column6 =     ["B","L","S","T","Q","F","G"]
column5 = ["H","Q","B","J","G","C","F","V"]
column4 = ["B","J","F","P","Z","M","D","L"]
column3 = ["C","D","Z","N","H","M","L","V"]
column2 =         ["F","Z","C","B","V","J"]
column1 =     ["W","P","G","Z","V","S","B"] # STARTS HERE

stacks = [column1,column2,column3,column4,column5,column6,column7,column8,column9]

def extractCommands(currentLine)
    fromIndex = currentLine.index("from")

    quantity = currentLine[5..fromIndex-2].to_i
    origin = currentLine[fromIndex+5].to_i
    destination = currentLine[fromIndex+10].to_i

    return quantity, origin, destination
end

i = 10

while i < data.length
    currentLine = data[i]

    quantity, origin, destination = extractCommands(currentLine)

    j = 0
    while j < quantity
        stacks[destination-1].unshift(stacks[origin-1][0])

        stacks[origin-1].shift

        j += 1
    end

    i += 1
end

result = ""
k = 0

while k < stacks.length
    result << stacks[k][0]

    k += 1
end

puts result