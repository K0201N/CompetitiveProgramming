h, w = gets.split.map(&:to_i)
a = h.times.map { gets.split.map(&:to_i) }

rows_sum = a.map(&:sum)
columns_sum = a.transpose.map(&:sum)

h.times do |i|
  res = []
  w.times do |j|
    res << rows_sum[i] + columns_sum[j] - a[i][j]
  end
  puts res.join(' ')
end
