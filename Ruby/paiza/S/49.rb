def estimate_time_to_complete(n, x, f, s)
  total_time = 0

  while n > 0
    if n <= x
      total_time += (n.to_f / x).ceil
      break
    else
      development_time = n / x
      sleep_time = 3
      total_time += [development_time, sleep_time].min.ceil

      n -= development_time * x
      x += s
    end
  end

  total_time
end

n, x, f, s = gets.split.map(&:to_i)
puts estimate_time_to_complete(n, x, f, s)
