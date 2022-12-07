s = gets.chomp.split('')
ans = []

s.length.times do |i|
  if s[i] == '0'
    ans << '0'
  elsif s[i] == '1'
    ans << '1'
  elsif s[i] == 'B' && ans.length >= 1
    ans.pop
  end
end
puts ans.join
