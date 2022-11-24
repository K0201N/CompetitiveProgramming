n = gets.chomp.chars
puts n.uniq.length == 1 ? 'Won' : 'Lost'
