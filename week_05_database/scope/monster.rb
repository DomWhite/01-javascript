
class Math
	def self.sqrt
	end
end

Math.sqrt

class Monster

	@@count = 0

	def initialize(name)
		@name = name
		#class variables relate to all instances of a class
		if @@count
			@@count += 1
		else
			@@count = 0
		end
	end

	def sleep
	end

	def to_s
		''
	end

	def self.count
	end

end

#instances of monster
m1 = Monster.new('bob')

m2 = Monster.('bebob')
