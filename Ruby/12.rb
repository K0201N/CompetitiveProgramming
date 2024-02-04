n = gets.to_i
puts Time.at(n).utc.strftime('%X')
