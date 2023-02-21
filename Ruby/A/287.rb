n = gets.to_i
s = n.times.map{ gets.chomp }

y, n = 0, 0
s.each do |i|
  y += 1 if i == 'For'
  n += 1 if i == 'Against'
end
puts n<y ? 'Yes' : 'No'
