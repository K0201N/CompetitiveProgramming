w = gets.chomp.chars.sort

def result(arr)
  flag = []
  arr.group_by(&:itself).values.map do |v|
    flag << v.count.even?
  end

  puts flag.all? ? 'Yes' : 'No'
end

puts result(w)
