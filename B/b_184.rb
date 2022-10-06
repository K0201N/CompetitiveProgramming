n, x = gets.split.map(&:to_i)
s = gets.chomp.split('')

s.each do |i|
    if i == 'o'
        x += 1
    elsif i == 'x' && x >= 1
        x -= 1
    end
end
p x