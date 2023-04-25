n = gets
s = gets.chomp

puts s.include?('FF') || s.include?('MM') ? 'No' : 'Yes'
