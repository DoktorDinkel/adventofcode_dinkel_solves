data = File.readlines("input_day4.txt")

def overlap(pair1,pair2)
    # start1 = pair1[0]
    # end1 = pair1[2]
    # start2 = pair2[0]
    # end2 = pair2[2]

    start1Dash = pair1.index("-")
    start1 = pair1[0..start1Dash-1].to_i
    end1 = pair1[start1Dash+1..-1].to_i

    start2Dash = pair2.index("-")
    start2 = pair2[0..start2Dash-1].to_i
    end2 = pair2[start2Dash+1..-1].to_i

    puts "start1: #{start1}"
    puts "end1:   #{end1}"
    puts "start2: #{start2}"
    puts "end2:   #{end2}"

    if start1 <= start2 and end1 >= end2
        return true
    elsif start1 >= start2 and end1 <= end2
        return true
    else
        return false
    end
end

totalScore = 0

for currentLine in data
    pair1,pair2 = currentLine.split(",")
    puts "currentLine: #{currentLine}"

    if overlap(pair1,pair2)
        totalScore += 1
        puts "### overlap! ###"
    end

    puts "--------------------------------------"
end

puts totalScore