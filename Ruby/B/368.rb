def count_decrement_operations(array)
  cnt = 0
  while array.count(&:positive?) > 1
    array.sort!.reverse!
    array[0] -= 1
    array[1] -= 1
    cnt += 1
  end
  cnt
end

_n = gets
array = gets.split.map(&:to_i)
puts count_decrement_operations(array)
