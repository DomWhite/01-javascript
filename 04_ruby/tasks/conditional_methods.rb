# Drinking Age

puts "What is your age? "
userAge = gets.chomp.to_i

if userAge < 18 
	puts "Fuck off child"
else 
	puts "Come in and have a pint...or six"
end

# Air Conditioning

puts "What is the current temperature? "
current_temp = gets.chomp.to_i

puts "Is the aircon working (yes/no)? "
# true is Yes, or yes, false otherwise
aircon = (gets.chomp.downcase == "yes")

puts "What temperature would you like it to be? "
wanted_temp = gets.chomp.to_i

# if (current_temp > wanted_temp) && aircon == true
# 	puts "Turn on the A/C please"
# elsif (current_temp > wanted_temp) && aircon == false
# 	puts "Fix the fuckin A/C!!!"
# elsif (current_temp < wanted_temp) && aircon == false
# 	puts "Fix the fuckin A/C when you can...it's cool"
# end

if aircon 

	if current_temp > wanted_temp
		puts "Turn on the air con please"
	end

else
#no working aircon
	if current_temp > wanted_temp
		puts "fix the aircon, it's hot!"
	elsif current_temp < wanted_temp
		puts "fix the aircon when you have time, it's cool"
	end
	
end
			

# Melbourne Suburbs
puts "Which suburb do you live in?"
suburb = gets.chomp.downcase

case suburb 
	when "broadmeadows", "greenvale", "sunshine", "tullamarine"
		puts "Stay safe...mind the Lebos"
	when "toorak"
		puts "Go drink some peppermint tea while feasting on the eggs of a rare bird you ponce"
	when "fitzroy", "brunswick", "northcote"
		puts "Sorry we're out of organic, non-exploitative, none genetically modified,
		 gluten free, fructose free, homegrown coffee...oh and no bonsoy either"
	when ""
		puts "You didn't enter a suburb"
	else 
		puts "You're going to be fine"
end
	

	

