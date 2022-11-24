n = gets.to_i
mountain_dic = n.times.map{ gets.split.map(&:to_s) }.to_h
high_mountain_order = mountain_dic.values.map(&:to_i).sort.reverse.map(&:to_s)

puts mountain_dic.key(high_mountain_order[1])
