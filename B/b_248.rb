a, b, k = gets.split.map(&:to_i)
count = 0

while a < b do
  count += 1
  a *= k
end
p count