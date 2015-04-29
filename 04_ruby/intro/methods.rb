#puts is a method

def defuse_bomb(time_left) # brackets must be included in a value is being passed in

	if time_left > 60
		puts "remove the cover"
		puts "first cut the red wire"
		puts "then cut the blue wire"
	else
		puts "run"
	end

end

defuse_bomb(12)  # methods (same as functions) are called with or without brackets

def area (length, width)
	return length * width
end

result = area(4, 3)
puts result

puts area(5, 6) # same as puts (area 5, 6) which is the same as puts area 5, 6

def meaningness()
end

puts meaningness()

def square(x)
	x * x
end

def h1(body)
	"<h1>#{body}</h1>"
end

puts h1 "hello world"


