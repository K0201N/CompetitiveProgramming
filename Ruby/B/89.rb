gets
s = gets.chomp.split
puts s.uniq.count == 3 ? 'Three' : 'Four'
