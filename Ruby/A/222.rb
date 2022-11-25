n = gets.chomp.split('')

if n.length < 4
  (4-n.length).times.map do
    n.unshift(0)
  end
end
puts n.join
