H, W, x, y= gets.split.map(&:to_i)
S = H.times.map{gets.chomp}
X = x - 1
Y = y - 1

result = 1
def update_result(str, value)
    value -= 1
    str.each_char do |j|
        if j == "#"
            break
        else
            value += 1
        end
    end
    value
end

result = update_result(S[..X].map{|k| k[Y]}.join.reverse, result)
result = update_result(S[X][Y..], result)
result = update_result(S[X][..Y].reverse, result)
result = update_result(S[X..].map{|k| k[Y]}.join, result)

p result