n = gets.to_i
ac = 0
wa = 0
tle = 0
re = 0
n.times do
    s = gets.chomp
    ac += 1 if s == 'AC'
    wa += 1 if s == 'WA'
    tle += 1 if s == 'TLE'
    re += 1 if s == 'RE'
end
puts ("AC x #{ac}"),("WA x #{wa}"),("TLE x #{tle}"),("RE x #{re}")