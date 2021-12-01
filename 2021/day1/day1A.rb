measurements = File.readlines("input_day1.txt")

i = 1
previousMeasurement = measurements[0].to_i
answer = 0

while i <= measurements.length
    if previousMeasurement < measurements[i].to_i
        answer += 1
    end

    previousMeasurement = measurements[i].to_i
    i += 1
end

puts answer