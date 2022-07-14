s = gets.chomp
t = gets.chomp
count = 0
s.length.times do |i|
    s[i] != t[i] ? count += 1 : count
end
p count