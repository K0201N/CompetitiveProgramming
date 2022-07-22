n = gets.to_i % 10
if n == 3
    puts 'bon'
elsif [0, 1, 6, 8].include?(n)
    puts 'pon'
else
    puts 'hon'
end