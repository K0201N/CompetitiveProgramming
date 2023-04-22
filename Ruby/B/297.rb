s = gets.chomp.split('')

condition_1 = []
condition_2 = []

s.each.with_index(1) do |i, idx|
  if i == 'B'
    condition_1 << idx
  end
  if i == 'R'
    condition_2 << idx-1
    condition_2
  end
end

count = 0
condition_1.each do |i|
  count += 1 if i.even?
end

puts count == 1 && s[condition_2.first..condition_2.last].include?('K') ? 'Yes' : 'No'
