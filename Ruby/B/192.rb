s = gets.chomp.split('')

def result(s)
  even = s.select.with_index { |_, idx| idx.even? }
  odd = s.select.with_index { |_, idx| idx.odd? }
  even.all? { |i| i == i.downcase } && odd.all? { |i| i == i.upcase } ? 'Yes' : 'No'
end

puts result(s)
