n = gets.to_i
sum = 0
day = 0

n.times do |i|
  day += 1
  sum += 1+i
  break if sum >= n
end
p day
