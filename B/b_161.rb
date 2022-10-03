_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

count = 0
a.each do |i|
  if i >= a.sum * Rational(1, 4*m)
    count += 1
  end
end
puts count >= m ? 'Yes' : 'No'
