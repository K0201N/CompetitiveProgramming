n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

n.times do |i|
  if (i+1).even?
    a[i] -= 1
  end
end

puts a.sum <= x ? 'Yes' : 'No'
