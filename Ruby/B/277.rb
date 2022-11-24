n = gets.to_i
s = n.times.map { gets.split.map(&:to_s) }
x = s.map do |i|
  i.join.split('')
end

first_criteria = /(H|D|C|S)/
second_criteria = /(A|2|3|4|5|6|7|8|9|T|J|Q|K)/

ans = 'Yes'
x.map do |i|
  unless i[0].match?(first_criteria) && i[1].match?(second_criteria) && s.length == s.uniq.length
    ans = 'No'
  end
end
puts ans
