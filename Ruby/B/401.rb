def count_unauthorized_private_access(commands)
  logged_in = false
  violations = 0

  commands.each do |command|
    case command
    when 'login'  then logged_in = true
    when 'logout' then logged_in = false
    when 'private'
      violations += 1 unless logged_in
    end
  end

  violations
end

total_commands = gets.to_i
commands = total_commands.times.flat_map { gets.split }

puts count_unauthorized_private_access(commands)