s = gets.chomp

if s == 'a'
  puts -1
elsif s.size > 1
  puts s.chop
else
  puts (s.bytes[0] - 1).chr
end
