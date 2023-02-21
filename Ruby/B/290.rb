n, k = gets.split.map(&:to_i)
s = gets.chomp.chars

count = 0
res = []

n.times do |i|
  if s[i] == 'o' && count < k
    res << 'o'
    count += 1
  else
    res << 'x'
  end
end
puts res.join
