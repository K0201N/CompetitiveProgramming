n, k, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
score = a.inject(:+)
x = n * m - score

if k < x
  puts "-1"
elsif x.negative?
  puts 0
else
  puts x
end
