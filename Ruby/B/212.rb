password = gets.chomp.chars.map(&:to_i)

def weak_password?(password)
  if password.uniq.length == 1
    puts 'Weak'
    exit
  end

  3.times do |i|
    if (password[i]+1)%10 != (password[i+1])%10
      puts 'Strong'
      exit
    end
  end
  puts 'Weak'
end

puts weak_password?(password)
