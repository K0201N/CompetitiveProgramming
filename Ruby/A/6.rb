n = gets.to_i

def fizz_buzz(n)
  if n%3 == 0
    puts 'YES'
  else
    puts 'NO'
  end
end

puts fizz_buzz(n)
