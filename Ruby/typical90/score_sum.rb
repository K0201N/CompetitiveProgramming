n = gets.to_i
x = n.times.map { gets.split.map(&:to_i) }
q = gets.to_i
y = q.times.map { gets.split.map(&:to_i) }

set1 = Array.new(y.size) { [] }
set2 = Array.new(y.size) { [] }

(y.size).times do |i|
  x[(y[i][0]-1)...y[i][1]].each do |j|
    case j[0]
    when 1
      set1[i] << j[1]
    when 2
      set2[i] << j[1]
    end
  end
  puts "#{set1[i].sum} #{set2[i].sum}"
end
