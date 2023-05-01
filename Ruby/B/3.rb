s = gets.chomp.split('')
t = gets.chomp.split('')

ATCODER = %w[a t c o d e r].freeze

s.size.times do |i|
  if s[i] != t[i]
    if s[i] == '@'
      unless ATCODER.include?(t[i])
        puts 'You will lose'
        exit
      end
    elsif t[i] == '@'
      unless ATCODER.include?(s[i])
        puts 'You will lose'
        exit
      end
    else
      puts 'You will lose'
      exit
    end
  end
end

puts 'You can win'
