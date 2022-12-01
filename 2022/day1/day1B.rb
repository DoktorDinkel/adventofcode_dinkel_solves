data = File.readlines("input_day1.txt")

i = 0
currentSum = 0
sumList = []

while i < data.length
    currentSum += data[i].to_i
    
    if data[i].to_s == "\n" || i == data.length
        sumList << currentSum
        currentSum = 0
    end

    i += 1
end

p sumList

puts "sort -------------------------------"

puts sumList.sort

puts "finished -------------------------------------------------------------------"

puts sumList.sort[sumList.length - 1]

puts sumList.sort[sumList.length - 2]

puts sumList.sort[sumList.length - 3]

sum = sumList.sort[sumList.length - 3] + sumList.sort[sumList.length - 2] + sumList.sort[sumList.length - 1]

puts sum
#puts sumList.sort[sumList.length - 1] + sumList.sort[sumList.length - 2] sumList.sort[sumList.length - 3]