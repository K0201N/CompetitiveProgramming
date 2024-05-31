n, t = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
time = t

(1...n).each do |i|
  if a[i-1] + t <= a[i]
    time += t
  else
    time += a[i] - a[i-1]
  end
end

puts time
