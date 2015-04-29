class Person
	attr_accessor :name, :age, :gender
	# attr_reader :firstname, :lastname #just for reading
	# attr_writer :firstname, :lastname #just for writing

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		# @apartment = apartment
	end

	############# attr_accessor removes the need for these ##########
	# #getter
	# def firstname				
	# 	@firstname
	# end

	# #setter
	# def firstname=(firstname)
	# 	@firstname = firstname
	# end
	#################################################################

	def to_s
		"Tennant name: #{@name}, age: #{@age}, gender: #{gender}" #lives in #{@apartment}
	end

end