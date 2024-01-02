n, k, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

def res(n:, q:, a:, l:)
  q.times do |i|
    next if a[l[i]-1] == n
    next if a.include?(a[l[i]-1]+1)

    a[l[i]-1] += 1
  end

  puts a.join(' ')
end

res(n:, q:, a:, l:)
