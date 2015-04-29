require 'pry'


def richmond() 
		indexStartRich = ""
	if (startLine == "Alamein") {
		indexStartRich = metro["Alamein"].indexOf("Richmond");
	} elsif (startLine == "Glen Waverly") {
		indexStartRich = metro["Glen Waverly"].indexOf("Richmond");		
	} elsif (startLine == "Sandringham") {
		indexStartRich = metro["Sandringham"].indexOf("Richmond");
	end
	
		indexFinishRich = ""
	if (stopLine == "Alamein") {										
		indexFinishRich = metro["Alamein"].indexOf("Richmond");
	} elsif (stopLine == "Glen Waverly") {
		indexFinishRich = metro["Glen Waverly"].indexOf("Richmond");
	} elsif (stopLine == "Sandringham") {
		indexFinishRich = metro["Sandringham"].indexOf("Richmond");
	end
end

metro = {
	"Alamein" => ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	"Glen Waverly" => ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	"Sandringham" => ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}

puts "Welcome to Public Transport Victoria's shitty journey planner"
puts "==========================================================================="
puts "Alamein === Flinders, Richmond, East Richmond, Burnley, Hawthorn, Glenferrie"
puts "Glen Waverly === Flagstaff, Melbourne Central, Parliament, Richmond, Kooyong, Tooronga"
puts "Sandringham === Southern Cross, Richmond, South Yarra, Prahran, Windsor"
puts "==========================================================================="

puts "Please choose a line to begin your journey on, followed by the station"

startLine = "Alamein"
startStation = "Flinders"

puts "Please choose a line to finish your journey on, followed by the station"

stopLine = "Sandringham"
stopStation = "Windsor"


start = metro[startLine].index(startStation)			#gets the index of starting station
finish = metro[stopLine].index(stopStation)			#gets the index of finishing station

	tripPartOne = 0																	
	if (startLine == "Alamein") {								# 	This If statement determines which line's Richmond
		tripPartOne = Math.abs(start - ala_rich);			#	station index to use. It is then subtracted from the
	 elsif (startLine == "Glen Waverly") 					#	index of the departure station. Integer is then converted
		tripPartOne = Math.abs(start - glen_rich)			#	into a positive via Math.abs()
	 elsif (startLine == "Sandringham") 
		tripPartOne = Math.abs(start - sand_rich)
	end
	

	tripPartTwo = 0
	if (stopLine == "Alamein") {								# 	This If statement determines which line's Richmond
		tripPartTwo = Math.abs(finish - ala_rich)			#	station index to use. It is then subtracted from the
	} elsif (stopLine == "Glen Waverly") {					#	index of the arrival station. Integer is then converted
		tripPartTwo = Math.abs(finish - glen_rich)			#	into a positive via Math.abs()
	} elsif (stopLine == "Sandringham") {
		tripPartTwo = Math.abs(finish - sand_rich)
	end

	numberOfStops = tripPartOne + tripPartTwo				# number of stops determined by adding the outcomes of

	result = "If you depart " + startStation.upcase + " and disembark at " + stopStation.upase + " you will have travelled " + numberOfStops + " stop/s."
	puts result

binding.pry




