

def numberGuess(game_max, user_guess)
	computer_choice = rand(game_max) + 1
	puts computer_choice

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

end

numberGuess(10, 10)