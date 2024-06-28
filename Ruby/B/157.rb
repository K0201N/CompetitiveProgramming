a = 3.times.map { gets.split.map(&:to_i) }
n = gets.to_i
b = n.times.flat_map { gets.split.map(&:to_i) }
row = a
col = a.transpose
left_oblique = [a[0][0], a[1][1], a[2][2]]
right_oblique = [a[0][2], a[1][1], a[2][0]]

lines = row + col + [left_oblique, right_oblique]

lines.each do |i|
  i -= b
  if i.empty?
    puts 'Yes'
    exit
  end
end
puts 'No'
