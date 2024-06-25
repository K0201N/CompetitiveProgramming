n = gets.to_i
cnt = 0

n.times do
  cnt += 1 if gets.chomp == 'Takahashi'
end
puts cnt
