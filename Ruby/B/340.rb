n = gets.to_i
query = n.times.map { gets.split.map(&:to_i) }

array = []
query.each do |x, y|
  case x
  when 1
    array << y
  when 2
    puts array[-y]
  end
end
