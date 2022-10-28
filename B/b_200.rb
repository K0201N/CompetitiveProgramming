n, k = gets.split.map(&:to_i)

k.times do
  if (n % 200).zero?
    n /= 200
  else
    n = "#{n}200".to_i
  end
end
p n
