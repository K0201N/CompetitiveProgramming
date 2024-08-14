n, _m = gets.split.map(&:to_i)
s = gets.chomp.split
t = gets.chomp.split.to_set

(0...n).each { puts t.include?(s[_1]) ? 'Yes' : 'No' }
