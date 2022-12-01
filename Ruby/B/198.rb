def isPalindrome(n)
  size = n.length/2
  if n[0..size] == n.reverse[0..size]
    puts "Yes"
  else
    puts "No"
  end
end

n = gets.strip
index = n.rindex(/[^0]/)
n = n[0..index]

isPalindrome(n)
