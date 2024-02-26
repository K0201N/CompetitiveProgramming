require 'set'

def count_distinct_features(n, l, data)
  min_features = l

  (1 << l).times do |mask|
    distinct_set = Set.new

    n.times do |i|
      distinct_set.add(data[i] & mask)
    end

    if distinct_set.size == n
      min_features = [min_features, mask.to_s(2).count('1')].min
    end
  end

  min_features
end

n, l = gets.split.map(&:to_i)
data = Array.new(n) { gets.split.map(&:to_i).reduce(0) { |acc, x| acc * 2 + x } }

puts count_distinct_features(n, l, data)
