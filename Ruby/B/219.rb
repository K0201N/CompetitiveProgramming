s = 3.times.map { gets.chomp.split }
t = gets.chomp.split('').map(&:to_i)

ans = []
t.map do |i|
  ans << s[i-1]
end
puts ans.join
