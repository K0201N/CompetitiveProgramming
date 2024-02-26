class User
  def initialize(name:, old:, birth:, state:)
    @name = name
    @old = old
    @birth = birth
    @state = state
  end

  def find(target_old)
    puts @name if @old.to_i == target_old
  end
end

n = gets.to_i
users = []
n.times do
  name, old, birth, state = gets.chomp.split
  users << User.new(name:, old:, birth:, state:)
end
target_old = gets.to_i

users.each { |user| user.find(target_old) }
