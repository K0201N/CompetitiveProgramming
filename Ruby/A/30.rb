a, b, c, d = gets.split.map(&:to_f)
x = b/a
y = d/c

if x == y
  puts 'DRAW'
elsif x <= y
  puts 'AOKI'
elsif y <= x
  puts 'TAKAHASHI'
end
