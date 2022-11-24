# H.times do
#     puts 4
# end
# H = たて
# W = よこ
# (x,y)から↑↓→←方向を枠から出るか、(#)にあたるまで見ていき、枠か(#)にあたるまでカウント(+1)する
# (x,y)もカウントする
# 4 4 2 2
# 縦4行 横4列 x,yが上から２番目の左から２番目
# S[1][1] が(x,y)
# X Y をマイナス１する
H, W, x, y= gets.split.map(&:to_i)
# S = H.times.map{gets.chomp.chars}.flatten
S = H.times.map{gets.chomp}
X = x - 1
Y = y - 1
p S
# S.each do |i|
#     if X == '#'
#         break
#     else
#         result += 1
#     end
# end

# 点を全部見る
# S.each do |i|
    # i.each_char do |j|
    #     if j == "#"
    #         next
    #     else
    #         result += 1
    #     end
    #     puts result
    # end
# end

# p S[0][0..3], S[1][0..3], S[2][0..3], S[3][0..3]
# p S[X][Y..] = "..#" ←これの点を数える
# result = 1
# def update_result(str)
#     result -= 1
#     str.each_char do |j|
#         if j == "#"
#             next
#         else
#             result += 1
#         end
#     end
# end

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
p S[..X].map{|k| k[Y]}.join.reverse #上 result -1
p S[X][Y..] #右 result -1
p S[X][..Y].reverse #左 result -1
p S[X..].map{|k| k[Y]}.join #下 result -1
# p S[..X]

4 4 2 2
##..
,。,#
#,#.
.#.#

4 4 x y
##..
.(x,y).#
#.#.
.#.#
上から２番目の左から２番目
res = 4

3 5 1 4
#....
#####
....#

3 5 x y
#..(x,y).
#####
....#
上から１番目の左から４番目
res = 4

5 5 4 2
.#..#
#.###
##...
#..#.
#.###

5 5 x y
.#..#
#.###
##...
#..#.
#(x,y)###
上から４番目の左から２番目
res = 3