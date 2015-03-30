def leap_year(year)
	if year % 4 == 0
		if (year % 100 == 0) && (year % 400 == 0)
				puts "#{year} is a leap year"
			else 
				puts "#{year} is NOT a leap year"
		end
	else
	puts "#{year} is NOT a leap year"
	end
end

leap_year(2000)

leap_year(1900)

leap_year(1872)
leap_year(1876)
leap_year(1880)
leap_year(1884)
leap_year(1888)
leap_year(1892)
leap_year(1896)