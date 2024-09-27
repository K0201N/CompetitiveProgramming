_, query_count = gets.split.map(&:to_i)
str = gets.chomp

query_count.times do
  target_idx, new_char = gets.split
  str[target_idx.to_i - 1] = new_char

  puts str.scan(/ABC/).size
end
