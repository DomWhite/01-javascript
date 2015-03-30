def menu
puts "Select an option and then enter two numbers"
	puts "a) addition"
	puts "b) subtraction"
	puts "c) multiplication"
	puts "d) division"
	puts "e) exponent"
	puts "f) square root"
	puts "q) quit crappy calculator"
end

def runStandardCalc(choice, firstNumber, secondNumber)
	if choice == "a"
		result = firstNumber + secondNumber
		puts "#{firstNumber} + #{secondNumber} = #{result}"

	elsif choice == "b"
		result = firstNumber - secondNumber
		puts "#{firstNumber} - #{secondNumber} = #{result}"

	elsif choice == "c"
		result = firstNumber * secondNumber
		puts "#{firstNumber} * #{secondNumber} equals #{result}"

	elsif choice == "d"
		result = firstNumber / secondNumber
		puts "#{firstNumber} / #{secondNumber} = #{result}"

	elsif choice == "e"
		result = firstNumber ** secondNumber
		puts "#{firstNumber} ^ #{secondNumber} = #{result}"
		
	end
end


puts "Welcome to the crappy calculator"

menu

choice = gets.chomp.downcase


while choice != "q"
		puts "Please enter first number"
		firstNumber = gets.chomp.to_i
		puts "Please enter second number"
		secondNumber = gets.chomp.to_i
		runStandardCalc(choice, firstNumber, secondNumber)
		menu
		choice = gets.chomp.downcase

end

puts "Thanks for using the Crappy Calculator"














# def addition(firstNumber, secondNumber)
# 	return firstNumber + secondNumber
# end

# def subtraction(firstNumber, secondNumber)
# 	return firstNumber - secondNumber
# end

# def multiplication(firstNumber, secondNumber)
# 	return firstNumber * secondNumber
# end

# def division(firstNumber,secondNumber)
# 	return firstNumber / secondNumber
# end