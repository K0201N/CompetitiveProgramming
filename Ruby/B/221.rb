s = gets.chomp.chars
t = gets.chomp.chars

def res(s:, t:)
  return 'Yes' if s == t

  (s.length - 1).times do |i|
    sd = s.dup
    sd[i], sd[i+1] = sd[i+1], sd[i]
    return 'Yes' if sd == t
  end

  'No'
end

puts res(s:, t:)
