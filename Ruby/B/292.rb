players, q = gets.split.map(&:to_i)
events = q.times.map { gets.split.map(&:to_i) }
cards = {}
players.times { cards[_1 + 1] = 0 }

events.map do |i|
  case i[0]
  when 1
    cards[i[1]] += 1
  when 2
    cards[i[1]] += 2
  when 3
    puts cards[i[1]] >= 2 ? 'Yes' : 'No'
  end
end
