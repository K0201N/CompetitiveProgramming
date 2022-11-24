a, b, c, d = gets.split.map(&:to_i)

if a < c
    puts 'Takahashi'
elsif a == c
    if b <= d
        puts 'Takahashi'
    else
        puts 'Aoki'
    end
else
    puts 'Aoki'
end