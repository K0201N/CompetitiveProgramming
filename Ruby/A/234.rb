t = gets.to_i

def f(t)
  t**2 + 2*t + 3
end
puts f(f(f(t)+t)+f(f(t)))
