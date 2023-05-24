a, b, c = gets.split.map(&:to_i)
x = a * b * c
y = (10**9) + 7

p x % y
