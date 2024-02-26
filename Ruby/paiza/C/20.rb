m, p, q = gets.chomp.split.map(&:to_i)

sold_raw = m * (p.to_f / 100)
remaining = m - sold_raw
sold_prepared = remaining * (q.to_f / 100)

puts (remaining - sold_prepared).round(5)
