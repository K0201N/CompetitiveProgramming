a, b, c = gets.split.map(&:to_i)
plus = (a + b == c)
minus = (a - b == c)

if plus && minus
  puts '?'
elsif plus
  puts '+'
elsif minus
  puts '-'
else
  puts '!'
end
