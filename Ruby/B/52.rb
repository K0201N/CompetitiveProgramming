n = gets.to_i
s = gets.chomp.chars
x = 0
arr = [x]

s.each do |i|
  case i
  when 'I'
    x += 1
  when 'D'
    x -= 1
  end
  arr << x
end

puts arr.max
