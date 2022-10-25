a, b = gets.split.map(&:to_i)
i = b/a.to_f
s = i.round(3).to_s
s += '00' if s.size < 5
puts s