n = gets.to_i
flowers = n.times.map { gets.to_i }
set = Set.new
cnt = 0

flowers.each do |i|
  set.include?(i) ? cnt += 1 : set << i
end

puts cnt
