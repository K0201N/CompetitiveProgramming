n = gets.split.map(&:to_i).tally.values.sort
puts n == [2, 3] ? 'Yes' : 'No'
