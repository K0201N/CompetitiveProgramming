class GreedyTakahashi
  def initialize(takahashi:, aoki:, repeat_num:)
    @takahashi = takahashi
    @aoki = aoki
    @repeat_num = repeat_num
  end

  def execute
    decrement_takahashi
    decrement_aoki

    puts "#{@takahashi} #{@aoki}"
  end

  private

  def decrement_takahashi
    decrement_value = [@takahashi, @repeat_num].min
    @takahashi -= decrement_value
    @remaining_repeats_num = @repeat_num - decrement_value
  end

  def decrement_aoki
    @aoki -= [@aoki, @remaining_repeats_num].min
  end
end

takahashi, aoki, repeat_num = gets.split.map(&:to_i)
GreedyTakahashi.new(takahashi:, aoki:, repeat_num:).execute
