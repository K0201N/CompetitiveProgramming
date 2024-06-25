gets.to_i
a = gets.split.map(&:to_i)
cnt = 0

a.each.with_index do |_i, idx|
  cnt += 1 if a[idx] == a[idx+2]
end
puts cnt
