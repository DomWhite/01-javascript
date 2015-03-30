def suburb(surburb)

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

end