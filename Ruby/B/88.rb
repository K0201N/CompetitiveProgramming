gets
a = gets.split.map(&:to_i).sort.reverse

alice = []
bob = []

a.each_with_index do |i, idx|
  idx.even? ? alice << i : bob << i
end

puts alice.sum - bob.sum
