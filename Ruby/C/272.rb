gets
a = gets.split.map(&:to_i)

evens0_odds1 = a.partition(&:even?)
evens = evens0_odds1[0].max(2)
odds = evens0_odds1[1].max(2)

e = evens.size == 2 ? evens.sum : -1
o = odds.size == 2 ? odds.sum : -1

puts [e, o].max
