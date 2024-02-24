n = gets.to_i
divisors = Set.new

(1..Math.sqrt(n)).each do |i|
  if n % i == 0
    divisors << i
    divisors << n / i
  end
end

divisors.sort.each { |divisor| puts divisor }
