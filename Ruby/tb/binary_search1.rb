def binary_search(arr, target)
  left = 0
  right = arr.size - 1

  while left <= right
    mid = (left + right) / 2
    return mid + 1 if arr[mid] == target

    if arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  nil
end

_n, target = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

puts binary_search(arr, target)
