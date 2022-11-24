x = gets.chomp.split(' ').map(&:to_i)
puts x[1] == x.sort[1] ? 'Yes' : 'No'
