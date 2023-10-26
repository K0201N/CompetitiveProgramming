_n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort

h.pop(k)
puts h.sum
