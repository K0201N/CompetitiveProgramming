_n = gets.to_i
a = gets.chomp.split
b = gets.chomp.split

res1 = 0
res2 = 0

a.each_with_index do |i, idx|
  if i == b[idx]
    res1 += 1
  end
  if b.include?(i) && a[idx] != b[idx]
    res2 += 1
  end
end

p res1
p res2
