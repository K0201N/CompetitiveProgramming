m = gets.to_i / 1000.0
vv = nil

case m
when 0...0.1
  vv = '00'
when 0.1..5
  vv = sprintf("%02d", (m * 10).to_i)
when 5..30
  vv = sprintf("%02d", (m + 50).to_i)
when 30..70
  vv = sprintf("%02d",((m - 30) / 5 + 80).to_i)
else
  vv = 89
end

puts vv
