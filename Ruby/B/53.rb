s = gets.chomp.chars
puts (s.index('A')..s.rindex('Z')).to_a.count

