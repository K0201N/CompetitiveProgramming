n, m = gets.chomp.split.map(&:to_i)
a, b, c = gets.chomp.split.map(&:to_i)
sales = []
n.times do
  sales << gets.chomp.to_i
end

def calculate_closed_stores(n, m, a, b, c, sales)
  closed_stores = 0

  (0...n).each do |i|
    profit = (sales[i] * c) - (m * b) - a
    closed_stores += 1 if profit < 0
  end

  closed_stores
end

puts calculate_closed_stores(n, m, a, b, c, sales)
