class User
  attr_accessor :name, :old, :birth, :state

  def initialize(name:, old:, birth:, state:)
    @name = name
    @old = old
    @birth = birth
    @state = state
  end

  def change_name(new_name)
    @name = new_name
  end
end

def main
  n, m = gets.split.map(&:to_i)
  users = []
  n.times do
    name, old, birth, state = gets.chomp.split
    users << User.new(name:, old:, birth:, state:)
  end

  m.times do
    nth, new_name = gets.chomp.split
    nth = nth.to_i-1

    users[nth].change_name(new_name)
  end

  users.each do |user|
    puts [user.name, user.old, user.birth, user.state].join(' ')
  end
end

main
