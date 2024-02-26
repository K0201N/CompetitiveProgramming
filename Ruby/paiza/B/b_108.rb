gondola, group = gets.split.map(&:to_i)
gondola_count_limit = gondola.times.map { gets.split.map(&:to_i) }
each_group_count = group.times.map { gets.split.map(&:to_i)}
# p gondola_count_limit
# p each_group_count

# p each_group_count.flatten.sum
ans = []
n = 0
gondola_count_limit.map do |i|
  each_group_count[n].

  end
  n += 1
end
