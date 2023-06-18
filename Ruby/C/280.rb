s = gets.chomp.split('')
t = gets.chomp.split('')

t.each_with_index do |i, idx|
  unless i == s[idx]
    puts idx + 1
    break
  end
end
