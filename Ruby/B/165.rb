n = gets.to_i
x = 100
count = 0

while x < n do
  x += x / 100
  count += 1
end
p count
