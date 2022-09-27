H, W = gets.split.map(&:to_i)
A = H.times.map{gets.split.map(&:to_i)}.flatten

res = A.map do |i|
    i - A.min
end

p res.sum