s = gets.chomp.split('')
a = %w(a e i o u)
b = %w(a e i o u).map(&:upcase)

res = []
s.each do |i|
  unless a.include?(i) || b.include?(i)
    res << i
  end
end

puts res.join
