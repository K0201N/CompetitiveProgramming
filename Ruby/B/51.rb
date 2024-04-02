k, s = gets.split.map(&:to_i)
cnt = 0

(0..k).each do |x|
  min_y = [0, s - k - x].max
  max_y = [k, s - x].min

  cnt += max_y - min_y + 1 if max_y >= min_y
end

puts cnt
