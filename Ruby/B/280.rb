n = gets.to_i
s = gets.split.map(&:to_i)

def res(n:, s:)
  i = 0
  res = []

  n.times do |j|
    res << s[j] - i
    i = s[j]
  end
  res.join(' ')
end

puts res(n: n, s: s)
