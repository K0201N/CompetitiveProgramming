a, b, c = gets.split.map(&:to_i)
(a..b).each do |x|
    if x % c == 0
        puts x
        exit
    end
end
puts -1
