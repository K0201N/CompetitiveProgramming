def swapp(nums, x, y)
  nums[x], nums[y] = nums[y], nums[x]
end

def shift(nums)
  nums.unshift(nums.pop)
end

_n, query_count = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

query_count.times do
  t, x, y = gets.split.map(&:to_i)

  case t
  when 1
    swapp(nums, x-1, y-1)
  when 2
    shift(nums)
  when 3
    puts nums[x-1]
  end
end
