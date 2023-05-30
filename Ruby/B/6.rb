n = gets.to_i
arr = [0, 0, 1]

n.times do
  arr << (arr[-3..-1].sum) % 10007
end

p arr[n-1]
