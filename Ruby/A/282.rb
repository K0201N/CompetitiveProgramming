n = gets.to_i
ans = ['A']

(n-1).times.map do
  ans << ans.last.succ
end

puts ans.join
