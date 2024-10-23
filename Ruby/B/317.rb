_n = gets.to_i
nums = gets.split.map(&:to_i).sort

puts (nums[0]..nums[-1]).to_a - nums
