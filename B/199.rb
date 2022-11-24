gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

p [b.min - a.max + 1, 0].max