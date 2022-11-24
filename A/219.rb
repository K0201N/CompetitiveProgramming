x = gets.to_i

if 0 <= x && x < 40
    p 40-x
elsif x < 70
    p 70-x
elsif x < 90
    p 90-x
else
    puts 'expert'
end