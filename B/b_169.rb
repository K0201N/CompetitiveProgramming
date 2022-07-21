n = gets.to_i
a = gets.split.map(&:to_i)

if a.include?(0)
    p 0
    exit
end

result = 1
a.each do |i|
    result *= i
    if result > 10**18
        p -1
        exit
    end
end
p result