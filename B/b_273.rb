x, k = gets.split.map(&:to_i)

1.upto(k) do |i|
  x = x.round(-i)
end
p x
