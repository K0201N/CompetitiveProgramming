v, a, b, c = gets.split.map(&:to_i)

n = v % (a+b+c)

if n < a
    puts "F"
elsif n < a + b
    puts "M"
else
    puts "T"
end