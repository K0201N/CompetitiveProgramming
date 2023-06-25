h, _w = gets.split.map(&:to_i)
a = h.times.map { gets.split.map(&:to_i) }

a.transpose.each do |i|
  puts i.join(' ')
end
