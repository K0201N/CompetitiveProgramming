s1, s2 = gets.split
sum_s1 = s1.split('').map(&:to_i).sum
sum_s2 = s2.split('').map(&:to_i).sum
puts sum_s1 >= sum_s2 ? sum_s1 : sum_s2