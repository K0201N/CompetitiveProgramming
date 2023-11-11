_n, k = $stdin.gets.split.map(&:to_i)
a = $stdin.gets.split.map(&:to_i)
b = a.uniq

if b.size > k
  m = b.size - k
  hash = Hash.new(0)
  a.each { |i| hash[i] += 1 }
  puts hash.values.sort.take(m).sum
else
  puts '0'
end

