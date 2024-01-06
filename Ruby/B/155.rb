gets
a = gets.split.map(&:to_i)
evens = a.select { _1.even? }
evens.each do |even|
  unless even % 3 == 0 || even % 5 == 0
    puts 'DENIED'
    exit
  end
end
puts 'APPROVED'
