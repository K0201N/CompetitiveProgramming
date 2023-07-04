n = gets.to_i
s = gets.chomp.split('')

s.each_with_index do |i, idx|
  if i == '1'
    if idx.even?
      puts 'Takahashi'
      exit
    else
      puts 'Aoki'
      exit
    end
  end
end
