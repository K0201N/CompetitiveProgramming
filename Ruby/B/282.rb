students, num_problems = gets.split.map(&:to_i)
solvable_problems = students.times.map { gets.chomp.chars }

cnt = 0

solvable_problems.combination(2).each do |x, y|
  solvable = true
  num_problems.times do |i|
    unless x[i] == 'o' || y[i] == 'o'
      solvable = false
      break
    end
  end

  cnt += 1 if solvable
end

puts cnt
