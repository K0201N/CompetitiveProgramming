n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
query = q.times.map { gets.split.map(&:to_i) }

ans = []
query.map do |i|
  if i.length < 3
    ans << a[i[1]-1]
  else
    a[i[1]-1] = i[2]
  end
end

puts ans
