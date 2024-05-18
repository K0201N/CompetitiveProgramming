a = gets.to_i
b = gets.to_i
n = gets.to_i

while true
  if (n % a).zero? && (n % b).zero?
    puts n
    break
  end
  n += 1
end
