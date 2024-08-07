def two_sum(nums, target)
  num_idx_map = {}
  nums.each_with_index do |num, idx|
    target_pair = target - num
    return [num_idx_map[target_pair], idx] if num_idx_map.key?(target_pair)

    num_idx_map[num] = idx
  end
end

nums = gets.chomp.split.map(&:to_i)
target = gets.to_i

p two_sum(nums, target)
