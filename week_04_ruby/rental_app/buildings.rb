class Buildings
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors :apartments

	def initialize(address, style, has_doorman, is_walkup, num_floors)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = []
	end

	def to_s
		"This building is at: #{address} is of #{style} style with #{num_floors}. Door man: #{has_doorman}. Only stairs: #{is_walkup}."
	end

end