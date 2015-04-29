def leap_year?(year)
	return false if year % 4 != 0
	return false if year % 100 != 0
	return false if year % 400 != 0
	true
end

puts leap_year?(2000)

puts leap_year?(1900)

puts leap_year?(2004)
puts leap_year?(2008)
puts leap_year?(2012)
puts leap_year?(1884)
puts leap_year?(1888)
puts leap_year?(1892)
puts leap_year?(1896)