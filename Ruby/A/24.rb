children_fee, adult_fee, discount, total_count = gets.split.map(&:to_i)
children, adult = gets.split.map(&:to_i)

if total_count <= children + adult
  children_fee -= discount
  adult_fee -= discount
end

puts children * children_fee + adult * adult_fee
