a, b, c = gets.split.map(&:to_i)

def res(a, b, c)
  if c.even?
    a = a.abs
    b = b.abs
  end

  if a < b
    puts '<'
  elsif a > b
    puts '>'
  elsif a == b
    puts '='
  end
end

res(a, b, c)
