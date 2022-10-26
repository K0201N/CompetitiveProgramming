h, w = gets.split.map(&:to_i)
i = h.times.map{ gets.chomp.chars }

array = []
w.times.map do |j|
    i.each do |k|
        array << k[j]
    end
end
x = array.each_slice(h).to_a

ans = []
x.each do |l|
    ans << l.grep(/#/).size
end
puts ans.join(' ')