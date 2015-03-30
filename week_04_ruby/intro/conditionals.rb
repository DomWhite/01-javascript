if (2+2) == 5
	puts "the world has gone mad"
end

if (2+2) == 5
	puts "the world has gone mad"
else
	puts "nothing new here, back to work"
end

person = "wally"

if person != "wally"
	puts "where's wally?"
end

puts "where is wally" unless person == "wally"

# switch / case statement

grade = "B"

case grade 
  when "A","B"
  	puts "Well done! you massive nerd"
  when "C"
  	puts "pick it up"
  else 
  	"too bad"
end

if grade == "A"
	puts "Well done"
elsif grade == "B"
	puts "under achiever"
end