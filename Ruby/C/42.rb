def find_min_pay(num:, dislikes:)
  while true
    return num if dislikes.none? { |dislike| num.to_s.include?(dislike) }

    num += 1
  end
end

num, _k = gets.split.map(&:to_i)
dislikes = gets.chomp.split

puts find_min_pay(num:, dislikes:)
