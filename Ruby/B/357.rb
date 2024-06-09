s = gets.chomp.chars
cnt = 0

s.each do |i|
  cnt += 1 if i == i.upcase
end

puts (s.size - cnt) < cnt ? s.join.upcase : s.join.downcase
