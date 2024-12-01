left = []
right = []
sum = 0
i = 0


File.foreach("day1.txt") { |line| 
    left << line.split[0].to_i
    right << line.split[1].to_i
 }

right.sort!
left.sort!
len = left.length

while i < len
    sum += (left[i] - right[i]).abs
    i += 1
end

puts sum