a, b = gets.split.map(&:to_s)
aa, bb = gets.split.map(&:to_i)
target_color = gets.chomp

target_color == a ? aa -= 1 : bb -= 1

puts "#{aa} #{bb}"
