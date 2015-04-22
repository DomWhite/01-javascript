require 'pry'
class Dim

	def initialize(arr, max_num = 10) #optional second argument
		@arr = arr
		# @num2 = num2
		@max_num = max_num  

		# if @num1 == @num2
		# 	@num2 = nil
		# end

	end

	# def sum
	# 	tally = 0
	# 	(1..@max_num).to_a.each do |num|

	# 		if num % @num1 == 0 
	# 			tally += num
	# 		end

	# 		if !@num2.nil? && num % @num2 == 0
	# 			tally += num
	# 		end

	# 	end
	# 	tally
	# end

	def sum
		multiples = []
		(1..@max_num).to_a.each do |num|
		@arr.each do |mult|
				if num % mult == 0
					if !multiples.include?(num)
					multiples << num
					end
				end				 
			end
		end
		multiples.inject(:+)
	end

end