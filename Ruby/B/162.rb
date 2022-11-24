n = gets.to_i
sum = 0

1.upto(n) do |i|
    if i%3 != 0 && i%5 != 0
        sum += i
    end
end
p sum

# n.times do |i|
#     if i%3 == 0 && i%5 == 0
#         puts 'FizzBuzz'
#     elsif i%3 == 0
#         puts 'Fizz'
#     elsif i%5 == 0
#         puts 'Buzz'
#     else
#         sum += i
#     end
# end
# p sum
