x, y, z = gets.split.map(&:to_i)

res = if x == y
        z
      elsif y == z
        x
      elsif z == x
        y
      end

puts res
