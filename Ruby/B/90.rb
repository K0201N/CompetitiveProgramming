start_num, end_num = gets.split.map(&:to_i)

palindrome_count = (start_num..end_num).count do |num|
  num.to_s == num.to_s.reverse
end

puts palindrome_count
