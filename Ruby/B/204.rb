gets
a = gets.split.map(&:to_i)

count = 0
a.map do |nuts|
  count += nuts - 10 if (nuts - 10).positive?
end
p count
