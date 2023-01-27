n, p, q, r, s = gets.split.map(&:to_i)
a = gets.split

a[p-1..q-1], a[r-1..s-1] = a[r-1..s-1], a[p-1..q-1]
puts a.join(' ')
