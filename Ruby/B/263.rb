class FamilyTree
  def initialize(current:, parents:)
    @current = current
    @parents = parents
  end

  def res
    cnt = 0

    while @current > 1
      @current = @parents[@current - 2]
      cnt += 1
    end

    puts cnt
  end
end

current = gets.to_i
parents = gets.split.map(&:to_i)

family_tree = FamilyTree.new(current:, parents:)
family_tree.res
