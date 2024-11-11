def convert_octal_to_nonary(n)
  n.to_s.to_i(8).to_s(9)
end

def replace_eight_with_five(n)
  n.tr('8', '5')
end

n, k = gets.split.map(&:to_i)

k.times do
  n = convert_octal_to_nonary(n)
  n = replace_eight_with_five(n)
end

puts n
