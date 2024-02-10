x, _ = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

nums = (0..101).to_a - a
puts nums.min_by { (_1 - x).abs }
