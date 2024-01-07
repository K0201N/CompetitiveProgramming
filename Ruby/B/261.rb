n = gets.to_i
a = n.times.map { gets.chomp.chars }

n.times do |i|
  i.times do |j|
    unless (a[i][j] == 'W' && a[j][i] == 'L') || (a[i][j] == 'L' && a[j][i] == 'W') || (a[i][j] == 'D' && a[j][i] == 'D')
      puts 'incorrect'
      exit
    end
  end
end

puts 'correct'
