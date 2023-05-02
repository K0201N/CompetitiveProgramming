c = 4.times.map { gets.split.map(&:to_s).join(' ') }

c.map do |i|
  i.reverse!
end
c.reverse!
c.each { puts _1 }
