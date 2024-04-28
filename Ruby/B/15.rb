n = gets.to_i
bugs = gets.split.map(&:to_i)
sum = 0
cnt = 0

bugs.each do |b|
  unless b.zero?
    sum += b
    cnt += 1
  end
end

puts (sum.to_f/cnt.to_f).ceil
