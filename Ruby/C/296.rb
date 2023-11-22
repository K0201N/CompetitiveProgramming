require 'set'
class Result
  def initialize(n:, x:, a:)
    @n = n
    @x = x
    @a = a
  end

  def res
    @a.each do |i|
      if @a.include?(i + @x)
        puts 'Yes'
        exit
      end
    end

    puts 'No'
  end
end

n, x = gets.split.map(&:to_i)
a = Set.new(gets.split.map(&:to_i))

obj = Result.new(n:, x:, a:)
obj.res
