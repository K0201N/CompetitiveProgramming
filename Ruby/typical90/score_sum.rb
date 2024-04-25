student_count = gets.to_i
class1_cumulative_scores = Array.new(student_count + 1, 0)
class2_cumulative_scores = Array.new(student_count + 1, 0)

(1..student_count).each do |i|
  class_type, score = gets.split.map(&:to_i)
  class1_cumulative_scores[i] = class1_cumulative_scores[i - 1]
  class2_cumulative_scores[i] = class2_cumulative_scores[i - 1]

  if class_type == 1
    class1_cumulative_scores[i] += score
  elsif class_type == 2
    class2_cumulative_scores[i] += score
  end
end

query = gets.to_i
query.times do
  left, right = gets.split.map(&:to_i)
  class1_score_sum = class1_cumulative_scores[right] - class1_cumulative_scores[left - 1]
  class2_score_sum = class2_cumulative_scores[right] - class2_cumulative_scores[left - 1]

  puts "#{class1_score_sum} #{class2_score_sum}"
end
