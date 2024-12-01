sum = 0
left = []
right = {}
File.foreach("day1.txt") do |line|
  left_num, right_num = line.split.map(&:to_i)
  right[right_num] ||= 0
  right[right_num] += 1
  left << left_num
end

left.each { |num| sum += num * right[num] if right[num] }

puts sum