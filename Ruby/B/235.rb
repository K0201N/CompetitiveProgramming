_n = gets
h = gets.split.map(&:to_i)
r = h.shift

h.each do |i|
  if r < i
    r = i
  else
    break
  end
end

puts r
