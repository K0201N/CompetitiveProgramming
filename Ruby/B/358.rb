_n, a = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
end_time = 0

t.each do |arrival_time|
  start_time = [arrival_time, end_time].max
  end_time = start_time + a

  puts end_time
end
