a = gets.split.map(&:to_i)
count = 0

a.map do |i|
    until i == 7 do
        i += 1
        count += 1
    end
end
p count