_n, x = gets.split.map(&:to_i)
items = gets.split.map(&:to_i)
binary_num = x.to_s(2).reverse

total = 0
(items.size).times do |i|
  if binary_num[i] == '1'
    total += items[i]
  end
end

puts total
