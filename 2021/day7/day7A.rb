positions = File.read("day7_input.txt").split(",")

i = 0
sum = 0

while i < positions.length
    sum = sum + positions[i].to_i
    i += 1
end

average = sum.to_f / positions.length

j = 0
fuelSum = 0

while j < positions.length
    fuelSum = fuelSum + (positions[i].to_i - average).abs
    j += 1
end

fuelSum = fuelSum.round

puts fuelSum