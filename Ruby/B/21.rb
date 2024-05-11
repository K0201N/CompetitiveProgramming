n = gets.to_i
start, goal = gets.split.map(&:to_i)
k = gets.to_i
transit_points = gets.split.map(&:to_i)

if transit_points.include?(start) || transit_points.include?(goal) || transit_points.uniq.count != k
  puts 'NO'
else
  puts 'YES'
end
