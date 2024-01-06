a = gets.split.map(&:to_i)
puts a.uniq.count == 2 ? 'Yes' : 'No'
