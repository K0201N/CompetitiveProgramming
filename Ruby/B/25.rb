n, a, b = gets.split.map(&:to_i)
s = n.times.map { gets.chomp.split }
line = 0

s.each do |i|
  num = i[1].to_i
  case i[0]
  when 'East'
    line += if num < a
              a
            elsif num > b
              b
            else
              num
            end
  when 'West'
    line -= if num < a
              a
            elsif num > b
              b
            else
              num
            end
  end
end

if line.abs.zero?
  puts 0
else
  puts line.positive? ? 'East '"#{line}" : 'West '"#{line.abs}"
end
