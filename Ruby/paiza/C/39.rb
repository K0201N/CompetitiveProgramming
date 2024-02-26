s = gets.chomp.split('')

def res(s)
  nums = []
  s.each do |i|
    case i
    when '<'
      nums << 10
    when '/'
      nums << 1
    end
  end

  nums.sum
end

p res(s)
