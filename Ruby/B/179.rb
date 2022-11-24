n = gets.to_i
sum = 0
n.times do
    a,b = gets.split.map(&:to_i)
    sum = a==b ? sum+1 : 0
    if sum==3
        puts 'Yes'
        exit
    end
end
puts 'No'