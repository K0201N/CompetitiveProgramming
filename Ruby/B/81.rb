gets
a = gets.split.map(&:to_i)
num = 0

until a.any?(&:odd?)
  unless a.any?(&:odd?)
    num += 1
    a = a.map { _1 / 2 }
  end
end
puts num
