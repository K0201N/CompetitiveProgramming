n, m = gets.split.map(&:to_i)
a = m.times.map { gets.split.map(&:to_i) }

res = []
n.times do |i|
  line = []
  count = []
  a.each do |j|
    if j.include?(i+1)
      count << 1
      line << j.reject { |elm| elm == i+1 }
    end
  end
  res << [count.sum, line.sort].join(' ')
end
puts res
