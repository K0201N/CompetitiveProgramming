n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0

a.each do |i|
  i.downto(0) do |j|
    if j.even? ||  j % 3 == 2
      cnt += 1
    else
      break
    end
  end
end

puts cnt
