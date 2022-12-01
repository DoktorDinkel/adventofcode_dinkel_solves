data = File.readlines("input_day1.txt")

i = 0
currentSum = 0
highscore = 0

while i < data.length

    puts data[i]
    puts data[i].empty?
    
    if data[i].to_s == "\n"
        puts "empty line found"

        if currentSum > highscore
            highscore = currentSum
        end

        currentSum = 0
    else
        currentSum += data[i].to_i
    end

    i += 1
end

puts highscore