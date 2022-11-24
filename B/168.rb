k = gets.to_i
s = gets.chomp

puts s.length <= k ? s : s[..k-1].concat('...')