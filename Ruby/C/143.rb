n = gets.to_i
s = gets.chomp.chars

res = s[0]
s.each_cons(2) do |a, b|
  res << b unless a == b
end

puts res.length
