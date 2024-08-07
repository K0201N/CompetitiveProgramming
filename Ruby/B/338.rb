# s = gets.chomp.chars
# hash = Hash.new(0)

# s.each { |i| hash[i] += 1 }
# max_value = hash.values.max
# max_keys = hash.select { |_k, v| v == max_value }.keys

# puts max_keys.sort[0]

s = gets.chomp.chars

hash = s.tally
max_value = hash.values.max
max_keys = hash.select { |_k, v| v == max_value }.keys

puts max_keys.sort[0]
