n = gets.to_i
a = gets.split.map(&:to_i)

hash = a.map.with_index(1) { |val, idx| [idx, val] }.to_h
p hash.key(hash.values.sort[n-2])
