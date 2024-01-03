n = gets.to_i
a = gets.split.map(&:to_i)

def res(a)
  array = []

  a.each do |x|
    array.unshift 0
    array.map! { |i| i += x }
  end

  puts array.select { _1 >= 4 }.count
end

res(a)
