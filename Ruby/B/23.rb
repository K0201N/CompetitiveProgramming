n = gets.to_i
s = gets.chomp
cnt = 0

n.times do
  if s[0] == 'b' && s.size == 1
    break
  elsif s[0] == 'a' && s[-1] == 'c'
    s = s[1..-2]
    cnt += 1
  elsif s[0] == 'c' && s[-1] == 'a'
    s = s[1..-2]
    cnt += 1
  elsif s[0] == 'b' && s[-1] == 'b'
    s = s[1..-2]
    cnt += 1
  else
    cnt = -1
  end
end

puts cnt
