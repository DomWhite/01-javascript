require 'pry'

class Phone
	# attr_accessor :number

	def initialize(number)
		@number = number
	end

	def number
		#remove and destroy special characters then replace with ''
		# @number.gsub!(/[^0-9A-Za-z]/, '')
		@number = @number
			.gsub('(','') #gsub returns a copy
			.gsub(')','')
			.gsub(' ','')
			.gsub('-','')
			.gsub('.','')

		if @number.split('').length == 11 && @number.split('').first == "1"
			# @number.length == 11 && @number[0] == "1"
			@number[1..-1] 
		elsif @number.length == 11
			return "0000000000"
		elsif @number.length < 10
			return "0000000000"
		else
		@number
		end
	end

	def area_code
		@number[0..2]
	end

	def to_s
		area_code = @number[0..2]
		number_start = @number[3..5]
		number_last = @number[6..9]
		"(#{area_code}) #{number_start}-#{number_last}"
	end
end