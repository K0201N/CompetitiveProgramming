n, x = gets.split.map(&:to_i)
s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
f = ''

s.each_char do |i|
    f << i * n
end

puts f[x-1]