t = gets.to_i
a = (t*2).times.map { gets.split.map(&:to_i) }

array = []
a.map.with_index(1) do |i, idx|
  array << i if idx.even?
end

def count_odd(num)
  count = 0
  num.each do |i|
    count += 1 if i.odd?
  end
  count
end

array.map do |i|
  p count_odd(i)
end
