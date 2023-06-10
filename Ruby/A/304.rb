n = gets.to_i
s = n.times.map { gets.split }.to_h
s.transform_values!(&:to_i)

target_idx = nil
s.values.each_with_index do |i, idx|
  if i == s.values.min
    target_idx = idx
  end
end

s.values.rotate(target_idx).each do |i|
  puts s.key(i)
end
