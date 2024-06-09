_n, antiseptic_solution = gets.split.map(&:to_i)
hands = gets.split.map(&:to_i)
ans = 0

hands.each.with_index do |h, idx|
  if idx.zero? && h < antiseptic_solution
    ans += 1
    antiseptic_solution -= h
    next
  end

  break ans += 1 if idx == hands.size - 1 && h <= antiseptic_solution

  ans += 1 if h <= antiseptic_solution
  antiseptic_solution -= h
end

puts ans
