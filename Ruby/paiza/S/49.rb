# target_n, default_n, down_n, up_n = gets.split.map(&:to_i)
# time = 0
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

# 入力の取得

n, x, f, s = gets.split.map(&:to_i)

# 結果の出力
puts estimate_time_to_complete(n, x, f, s)
