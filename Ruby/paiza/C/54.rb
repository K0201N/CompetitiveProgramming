s = gets.chomp
leet_rules = {
  'A' => '4',
  'E' => '3',
  'G' => '6',
  'I' => '1',
  'O' => '0',
  'S' => '5',
  'Z' => '2'
}

puts s.chars.map { |c| leet_rules[c] || c }.join('')
