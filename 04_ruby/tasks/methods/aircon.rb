
def aircon(current_temp, aircon_working, wanted_temp)

	if aircon_working == "yes"

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

end

aircon(25, "no", 20)