# https://leetcode.com/problems/search-insert-position/description/
# 35. Search Insert Position

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right) / 2
    return mid if nums[mid] == target 

    if nums[mid] < target
      left = mid + 1
    else 
      right = mid - 1
    end
  end

  left
end

require 'minitest/autorun'
class SearchInsertPositionTest < Minitest::Test
  def test_search_insert
    assert_equal 2, search_insert([1, 3, 5, 6], 5)
    assert_equal 1, search_insert([1, 3, 5, 6], 2)
    assert_equal 4, search_insert([1, 3, 5, 6], 7)
  end
end