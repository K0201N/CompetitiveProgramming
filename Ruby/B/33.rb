num_of_town = gets.to_i
population_by_town = {}

num_of_town.times do
  town_name, population = gets.chomp.split
  population_by_town[town_name] = population.to_i
end

total_population = population_by_town.values.sum
candidate_city_name = population_by_town.find { |_town_name, population| population > total_population / 2 }&.first

puts candidate_city_name || 'atcoder'
