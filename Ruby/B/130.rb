_, x = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

cnt = 1
sum = 0

l.each do |n|
  sum += n
  break if sum > x

  cnt += 1
end

puts cnt
