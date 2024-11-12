n = gets.to_i
user_names = n.times.map { gets.chomp }

uniq_user_indexes = []
seen_names = {}

user_names.each.with_index(1) do |user_name, idx|
  unless seen_names[user_name]
    seen_names[user_name] = true
    uniq_user_indexes << idx
  end
end

puts uniq_user_indexes
