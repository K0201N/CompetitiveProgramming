n, m = gets.split.map(&:to_i)
arr = n.times.map { [] }

m.times do
  x, y = gets.split.map(&:to_i)
  arr[x-1] << y
  arr[y-1] << x
end

puts arr.map { [_1.size, _1.sort].join(' ') }
