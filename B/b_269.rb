input = 10.times.map { gets.chomp.split('').map(&:to_s) }

lines = input.map.with_index do |i, idx|
  idx if i.include?('#')
end.compact

lines_ans = lines.first + 1, lines.last + 1
idx_ans = (input[lines.first].find_index('#') + 1), (input[lines.last].rindex('#') + 1)

puts lines_ans.join(' '), idx_ans.join(' ')
