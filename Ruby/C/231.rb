n, q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
X = q.times.map { gets.to_i }

X.each do |x|
  index = A.bsearch_index { |a| a >= x }
  puts index ? A.length - index : 0
end
