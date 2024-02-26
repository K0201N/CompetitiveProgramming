class User
  def initialize(nickname:, old:, birth:, state:)
    @nickname = nickname
    @old = old
    @birth = birth
    @state = state
  end

  def make
    "User{\n" \
    "nickname : #{@nickname}\n" \
    "old : #{@old}\n" \
    "birth : #{@birth}\n" \
    "state : #{@state}\n" \
    "}"
  end
end

n = gets.to_i
users = []
n.times.map do
  nickname, old, birth, state = gets.chomp.split

  users << User.new(nickname:, old:, birth:, state:)
end

users.each { |user| puts user.make }
