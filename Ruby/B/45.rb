a = gets.chomp.chars
b = gets.chomp.chars
c = gets.chomp.chars

turn = 'a'
flag = true

while flag
  if turn == 'a'
    a.any? ? turn = a.shift : flag = false
  elsif turn == 'b'
    b.any? ? turn = b.shift : flag = false
  elsif turn == 'c'
    c.any? ? turn = c.shift : flag = false
  end
end
puts turn.upcase
