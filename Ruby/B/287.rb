n, m = gets.split.map(&:to_i)
s = n.times.map { gets.chomp.chars.map(&:to_s) }
t = m.times.map { gets.split.map(&:to_s) }.flatten

def preprocessing(s:)
  s.map do |i|
    i[3..].join
  end
end

def result(t:, s:)
  count = 0
  s = preprocessing(s: s)

  s.map do |i|
    if t.include?(i)
      count += 1
    end
  end
  count
end

puts result(t: t, s: s)
