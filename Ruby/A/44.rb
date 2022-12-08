n = gets.to_i
k = gets.to_i
x = gets.to_i
y = gets.to_i

result = 0
n.times.map do |i|
  i+1 <= k ? result += x : result += y
end
p result
