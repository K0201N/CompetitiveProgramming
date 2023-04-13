_n = gets
s = gets.split.map(&:to_i)

res = []
s.each do |i|
  res << i if i.even?
end

puts res.join(' ')
