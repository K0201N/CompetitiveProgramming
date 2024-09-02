gets
array = gets.split.map(&:to_i)
cnt = 0

while array.count(&:positive?) > 1
  array.sort!.reverse!

  array[0] -= 1
  array[1] -= 1

  cnt += 1
end

puts cnt
