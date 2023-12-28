def example
  # return to_enum unless block_given?
  puts "メソッドの開始"
  yield
  puts "メソッドの終了"
end
example { puts "ブロックの中身" }

def example_with_parameter
  yield("こんにちは")
end
example_with_parameter { |message| puts message }

def double(a)
  yield(a * 2)
end
double(4) { |x| puts x }
double(6) { |x| puts x }

def reverse_string(str)
  yield(str.reverse) if block_given?
end
reverse_string('hello') { |str| puts str }
reverse_string('world') { |str| puts str }

def time_logger
  if block_given?
    start_time = Time.now
    puts "Start time: [#{start_time}]"
    yield
    end_time = Time.now
    puts "End time: [#{end_time}]"
  end
end
time_logger do
  puts 'Processing...'
  # sleep 3
end

def custom_number_processor_by_yield(start_time:, end_time:)
  return unless block_given?

  (start_time..end_time).each do |t|
    yield(t)
  end
end
custom_number_processor_by_yield(start_time: 1, end_time: 5) { |t| puts t ** 2 }

def custom_number_processor_by_block(start_time:, end_time:, &block)
  return unless block_given?

  (start_time..end_time).each do |t|
    block.call(t)
  end
end
custom_number_processor_by_block(start_time: 1, end_time: 5) { |t| puts t ** 2 }
