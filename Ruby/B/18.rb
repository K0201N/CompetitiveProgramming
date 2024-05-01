array = gets.chomp
n = gets.to_i

n.times.map do
  l, r = gets.split.map(&:to_i)
  array[l-1..r-1] = array[l-1..r-1].reverse
end
puts array
