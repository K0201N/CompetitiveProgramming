s = gets.chomp
%w[eraser erase dreamer dream].each { |i| s.gsub!(i, '') }

puts s == '' ? 'YES' : 'NO'
