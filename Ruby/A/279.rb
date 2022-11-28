s = gets.chomp.split('')
count = 0

s.map do |i|
  if i == 'v'
    count += 1
  elsif i == 'w'
    count += 2
  end
end
p count
