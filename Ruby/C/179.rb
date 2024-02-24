n = gets.to_i
cnt = 0

(1..n).each do |a|
  cnt += (n-1)/a
end

puts cnt
