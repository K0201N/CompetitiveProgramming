a, b, c = gets.split.map(&:to_i)
A = a*a
B = b*b
C = c*c

puts A + B < C ? 'Yes' : 'No'