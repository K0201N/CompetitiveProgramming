s = 4.times.map{ gets.chomp }.sort
arr = %w(H 2B 3B HR).sort

puts s == arr ? 'Yes' : 'No'
