n, a, b = gets.split.map(&:to_i)

div = n/(a+b)
mod = n%(a+b)
puts div*a+[mod ,a].min
