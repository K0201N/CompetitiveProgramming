# n = gets.to_i
# names = n.times.map { gets.chomp }
# hash = Hash.new(0)
# names.each { |name| hash[name] += 1 }

# puts hash.key(hash.values.max)

class NameCounter
  def initialize(names:)
    @names = names
    @hash = Hash.new(0)
    count_name
  end

  def most_frequent_name
    @hash.key(@hash.values.max)
  end

  private

  def count_name
    @names.each { |name| @hash[name] += 1 }
  end
end

n = gets.to_i
names = n.times.map { gets.chomp }

name_counter = NameCounter.new(names:)
puts name_counter.most_frequent_name
