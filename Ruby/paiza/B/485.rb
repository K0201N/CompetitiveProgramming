

n, m = gets.chomp.split.map(&:to_i)
maps = []
n.times do
  maps << gets.chomp.split.map(&:to_i)
end

def check_routes(n, m, maps)
  valid_routes = []

  (0...n).each do |col|
    flg = true
    (0...n).each do |row|
      if maps[row][col] >= m
        flg = false
        break
      end
    end
    valid_routes << (col + 1) if flg
  end

  valid_routes
end

valid_routes = check_routes(n, m, maps)

puts valid_routes.empty? ? 'wait' : valid_routes.join(' ')
