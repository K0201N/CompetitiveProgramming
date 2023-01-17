s = gets.chomp.split('')

def great_string?(s)
  s == s.uniq && /[A-Z]/.match?(s.to_s) && /[a-z]/.match?(s.to_s) ? 'Yes' : 'No'
end

puts great_string?(s)
