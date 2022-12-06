data = File.readlines("input_day6.txt")

startIndicator = ""
index = 0
i = 0

while i < data[0].length
    currentChars = data[0][i..i+13]
    puts currentChars
    
    if currentChars.chars.uniq.count { |char| currentChars.count(char) > 1 } == 0
        puts "here"
        startIndicator = currentChars
        index = i
        break
    end

    i += 1
end

puts index + startIndicator.length
puts index
puts startIndicator
puts startIndicator.length