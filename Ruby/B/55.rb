n = gets.to_i
pw = 1

n.times do |i|
  pw *= i+1
  pw %= (10**9+7)
end

puts pw
