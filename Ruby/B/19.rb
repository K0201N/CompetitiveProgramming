str = gets.chomp

current_char = str[0]
cnt = 0
res = []

str.each_char do |char|
  if char == current_char
    cnt += 1
  else
    res << "#{current_char}#{cnt}"

    current_char = char
    cnt = 1
  end
end
res << "#{current_char}#{cnt}"

puts res.join
