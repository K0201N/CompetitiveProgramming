def tagged_row_fill(bord)
  bord.each do |row|
    row.each { |cell| cell.gsub!('.', 'x') } if row.include?('#')
  end
end

def find_dots(bord)
  bord.flatten.count('.')
end

bord = 8.times.map { gets.chomp.split.flat_map(&:chars) }

tagged_row_fill(bord)
tagged_row_fill(bord.transpose)
puts find_dots(bord)
