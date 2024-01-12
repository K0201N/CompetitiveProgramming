n = gets.to_i
count = 0

while n > 0
  n == 1 ? n -= 1 : n -= 2
  count += 1
end
puts count
