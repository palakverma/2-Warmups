 
puts "How many dice would you like to roll?" 
n = gets.chomp.to_i

sum = 0 
n.times do
 	sum += rand(1..6)	
end

puts sum 
