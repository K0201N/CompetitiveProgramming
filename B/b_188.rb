N = gets.strip.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

# C = (A[0]) * B[0] + A[1] * B[1] + A[2] * B[2]
ans = N.times.inject(0) do |i, n|
  i += A[n] * B[n]
end
if ans == 0
  puts 'Yes'
else
  puts 'No'
end
