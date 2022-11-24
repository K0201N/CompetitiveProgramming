n = (gets.to_i * 1.08).floor

if n < 206
  puts 'Yay!'
elsif n > 206
  puts ':('
elsif n == 206
  puts 'so-so'
end
