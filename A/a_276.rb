s = gets.chomp
puts s.include?('a')? s.rindex('a')+1 : '-1'
