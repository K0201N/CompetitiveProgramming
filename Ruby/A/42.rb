def result(x)
  five_count = 0
  seven_count = 0

  x.map do |i|
    if i == 5
      five_count += 1
    elsif i == 7
      seven_count += 1
    end
  end

  five_count == 2 && seven_count == 1 ? 'YES' : 'NO'
end

x = gets.split.map(&:to_i)
puts result(x)
