gets
num_with_idx = gets.split.map(&:to_i).each.with_index(1).to_a
puts num_with_idx.max_by(2) { |num, _idx| num }.last[1]
