query = gets.to_i
queue = []

query.times do
  n, x = gets.split.map(&:to_i)

  case n
  when 1
    queue << x
  when 2
    puts queue.shift
  end
end
