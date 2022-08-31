x, y = gets.chomp.split('.').map(&:to_i)

if y <= 2
    puts "#{x}-"
elsif (3..6).include?(y)
    puts x
elsif (7..9).include?(y)
    puts "#{x}+"
end
