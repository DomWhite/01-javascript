# Number generator

# computer_choice = rand(10) + 1  

# puts "Please guess a number between 1 and 10"
# user_guess = gets.chomp.to_i

# until user_guess == computer_choice 
# 	puts "Guess again!"
# 	user_guess = gets.chomp.to_i
# end
# puts "You guessed correctly!"


# 

puts "What is the max range you would like to have a number generated to (1-10000)?"
game_max = gets.chomp.to_i

computer_choice = rand(game_max) + 1
puts computer_choice

puts "Choose a number between 0 and #{game_max} "
user_guess = gets.chomp.to_i


until user_guess == computer_choice

	if user_guess < computer_choice
		puts "Higher! Guess again."
		user_guess = gets.chomp.to_i

	elsif user_guess > computer_choice
		puts "Lower! Guess again."
		user_guess = gets.chomp.to_i

	end

end

puts "You guessed correctly!"



			