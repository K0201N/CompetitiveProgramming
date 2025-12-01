class Machine
  def initialize(initial_weight, parts_weights)
    @current_weight = initial_weight
    @parts_weights = parts_weights
    @attached_states = Array.new(parts_weights.size, false)
  end
  
  def toggle_part(part_num)
    idx = part_num - 1
    attached?(idx) ? detach(idx) : attach(idx)
    @current_weight
  end

  private

  def attached?(idx)
    @attached_states[idx]
  end

  def attach(idx)
    @current_weight += @parts_weights[idx]
    @attached_states[idx] = true
  end

  def detach(idx)
    @current_weight -= @parts_weights[idx]
    @attached_states[idx] = false
  end
end

initial_weight = gets.to_i
_parts_type_num = gets.to_i
parts = gets.split.map(&:to_i)
query_num = gets.to_i

machine = Machine.new(initial_weight, parts)

query_num.times do
  part_num = gets.to_i
  puts machine.toggle_part(part_num)
end

# weight = gets.to_i
# _parts_type_num = gets.to_i
# parts = gets.split.map(&:to_i)
# query_num = gets.to_i

# is_attached = Array.new(parts.size, false)

# query_num.times do
#   part_idx = gets.to_i - 1
#   target_part = parts[part_idx]

#   if is_attached[part_idx]
#     weight -= target_part
#     is_attached[part_idx] = false
#   else
#     weight += target_part
#     is_attached[part_idx] = true
#   end

#   puts weight
# end
