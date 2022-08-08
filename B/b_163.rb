n, m = gets.split.map(&:to_i)
i = gets.split.map(&:to_i).sum
puts n - i >= 0 ? n - i : -1