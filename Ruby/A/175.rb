s = gets.strip

if s.match('RRR')
    puts 3
elsif s.match('RR')
    puts 2
elsif s.match('R')
    puts 1
else
    puts 0
end
