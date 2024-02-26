rm n, m = gets.split.map(&:to_i)
a = (n-1).times.map{ gets.to_i }

ans = 0
a.each do |i|
  if i <= m
    ans += i
  end
end
p ans
