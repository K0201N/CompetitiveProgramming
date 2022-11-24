n = gets.to_i

if (1..125).include?(n)
    puts 4
elsif (126..211).include?(n)
    puts 6
elsif (212..214).include?(n)
    puts 8
end