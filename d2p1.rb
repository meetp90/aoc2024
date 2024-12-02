def is_monotone?(input_list)
    input_list == input_list.sort || input_list == input_list.sort.reverse
  end
  
  def is_gradual?(input_list)
    (0...input_list.length-1).all? do |i|
      diff = (input_list[i] - input_list[i+1]).abs
      diff >= 1 && diff <= 3
    end
  end
  
  def is_safe?(input_list)
    is_gradual?(input_list) && is_monotone?(input_list)
  end
  
  reports = File.readlines('day2.txt').map do |line|
    line.split.map(&:to_i)
  end
  
  answer = reports.count { |report| is_safe?(report) }
  puts answer