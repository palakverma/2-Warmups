def displayingDiceNumber
num = rand(1..6) 
	until num == 0 
		print "#"
		num -= 1 
	end
end 

def numberOfDiceRolled(number_of_dice)
	number_of_dice.times do 
		displayingDiceNumber()
	end  
end 

def repeatRolls(number_of_times, number_of_dice) 
	number_of_times.times do 
		numberOfDiceRolled(number_of_dice)
		puts "\n"
	end 
end 


puts "How many dice would you like to roll?" 
number_of_dice = gets.chomp.to_i

puts "How many times would you like to roll them?"
number_of_times = gets.chomp.to_i 

repeatRolls(number_of_times, number_of_dice)