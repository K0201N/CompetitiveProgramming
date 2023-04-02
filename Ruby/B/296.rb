s = 8.times.map { gets.chomp.split('').map(&:to_s) }
ALFABET = %w[a b c d e f g h].freeze
POSITION = %w[8 7 6 5 4 3 2 1].freeze

s.each_with_index do |i, idx|
  if i.include?('*')
    puts ALFABET[i.find_index('*')] + POSITION[idx]
  end
end
