instructions = File.readlines("input_day2.txt")

i = 0

PosX = 0
PosY = 0
aim = 0

while i < instructions.length

    currentInstruction = instructions[i]

    if currentInstruction.include?("forward")
        PosX = PosX + currentInstruction[8,1].to_i
        PosY = PosY + aim * currentInstruction[8,1].to_i
    elsif currentInstruction.include?("down")
        aim = aim + currentInstruction[5,1].to_i
    elsif currentInstruction.include?("up")
        aim = aim - currentInstruction[3,1].to_i
    else
        puts "invalid input"
    end

    i += 1
end

puts PosX * PosY