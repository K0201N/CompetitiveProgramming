n = gets.to_i

def f(n)
    return 1 if n == 0
    n * f(n-1)
end
puts f(n)