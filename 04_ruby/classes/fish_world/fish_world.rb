require 'pry'

fish1 = {
	name: "fishy fish",
	health: 100,
	speed: 5,
}

shark = {
	name: "sharky shark",
	health: 5000,
	speed: 15,
}

ocean_world = []

ocean_world << fish1 << shark

def move_fish(fish1)
	#move fish around
end

def move_shark(shark)
	#move shark around
end


class Fish

	# def initialize
	# 	@health = 100
	# 	@speed = s5
	# end

	def initialize(name, health, speed)
		@name = name
		@health = health
		@speed = speed
	end

		#read only
	def health
		@health #same as return @health
	end

		#write
	def health=(value)  #can be called as "variable".health = 6  	the name of the method is incidental e.g. it could be set_health(value)
		@health = value
	end

		#read
	def speed
		@speed
	end

		#write
	def speed=(value)
		@speed = value
	end

	def sleep
		@health = @health + 10
	end

	def pretty_output
		"My name is #{@name} I am a pretty fish"
	end

	def to_s	# every class has a built in to_s method (which is relatively useless) so we're setting our own.
		"My name is #{@name} I am a pretty fish"
	end

end

f1 = Fish.new("Fishy Fish", 50, 25)
f2 = Fish.new("Sharky Shark", 10, 5)

class World

	def initialize
		@ocean = []
	end

	def ocean 
		@ocean
	end

	def add_fish(fish)
		@ocean << fish
	end

end

##### EXAMPLE #####

#ocean = World.new
#ocean.add_fish(f1)

###################








binding.pry