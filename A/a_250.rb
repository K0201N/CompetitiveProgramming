H, W = gets.split.map(&:to_i)
R, C = gets.split.map(&:to_i)

count = 4
count -= 1 if C == 1
count -= 1 if R == 1
count -= 1 if C == W
count -= 1 if R == H

puts count
