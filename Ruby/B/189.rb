n, x = gets.split.map(&:to_i)
sum = 0

n.times do |i|
  v, p = gets.split.map(&:to_i)
  sum += v*p
  if sum > x*100
    puts i+1
    exit
  end
end
puts -1
