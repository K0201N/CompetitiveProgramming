def count_donuts(h, w, picture)
  donut_count = 0

  (1..h - 2).each do |i|
    (1..w - 2).each do |j|
      center = picture[i][j]
      if center == '.' &&
         picture[i - 1][j - 1..j + 1] == '###' &&
         picture[i + 1][j - 1..j + 1] == '###' &&
         picture[i][j - 1] == '#' &&
         picture[i][j + 1] == '#'
        donut_count += 1
      end
    end
  end

  donut_count
end

h, w = gets.split.map(&:to_i)
picture = []
h.times { picture << gets.chomp }

puts count_donuts(h, w, picture)
