class User
  attr_reader :name, :old, :birth, :state

  def initialize(name:, old:, birth:, state:)
    @name = name
    @old = old
    @birth = birth
    @state = state
  end
end

n = gets.to_i
users = []
n.times do
  name, old, birth, state = gets.chomp.split
  users << User.new(name:, old:, birth:, state:)
end

users.sort_by! { |user| user.old.to_i }
users.each do |user|
  puts [user.name, user.old, user.birth, user.state].join(' ')
end
