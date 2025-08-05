def find_min_print_time(times, required_pages)
  min_time = 0
  max_time = 10**9

  while min_time < max_time
    mid_time = (min_time + max_time) / 2
    if can_print_pages?(times, mid_time, required_pages)
      max_time = mid_time
    else
      min_time = mid_time + 1
    end
  end

  min_time
end

def can_print_pages?(printer_times, available_time, required_pages)
  total_printed = printer_times.sum { |n| available_time / n }
  total_printed >= required_pages
end

_n, k = gets.split.map(&:to_i)
printer_times = gets.split.map(&:to_i)

puts find_min_print_time(printer_times, k)
