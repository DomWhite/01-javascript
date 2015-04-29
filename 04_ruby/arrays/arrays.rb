require 'pry'

days_of_the_week = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']

days_of_the_week2 = "monday tuesday wednesday thursday friday saturday sunday".split(' ')

days_of_the_week3 = %w{monday tuesday wednesday thursday friday saturday sunday}

days_of_the_week[-1] # equals last element of the array. -2 does second last and so on


day = days_of_the_week.pop
days_of_the_week.unshift(day) # days_of_the_week.unshift days_of_the_week.pop

puts days_of_the_week

p days_of_the_week #programmers p

days_of_the_week.join ' '  # days_of_the_week.join(' ')

days_of_the_week.push('awesomeday')  # days_of_the_week << 'awesomeday'   << symbol to append

days_of_the_week.slice(0, 3) # starts for index and then how many you want

##### range
days_of_the_week[0..3] # takes from 0 to the 3rd index

days_of_the_week[0...3] # takes 


array = [1,2,4,2]

array.counts    	#counts how many items in the array
array.count(2) 		#counts how many times 2 occurs in the array
array.count {|x| x % 2 == 0}  #counts how many times numbers that satisfy the condition occurs in the array. This would be 3
#

array.select { |x| x.even? } #like count but returns an array of selected items
array.select! { |x| x.even? } #destructive method, over writes the original array

arr.map {|x| x + 5} 	#does something to each item in the array and returns them in a new array
arr.each {|x| puts x}	#loops through items in a collection but doesn't return new array

arr.all? 				#if everything is truethy will return true, if there is one falsey it will return false
arr.all? {|x| x > 2}	# basically asking does everything satisfy condition

arr.any? {|x| x > 3}    #basically asking if anything satisfies the condition

days_of_the_week.include? ("sunday") #asks a question is there "sunday" in the array and returns true if there is false if not
"I have something".include?('have')
["I have something"][0].include?('have')

array.inject("+") #injects an operator between the elements (not before or after)
array.inject(5, "+") #will place a 5 into the array and then perform the operation of adding
array.inject {|sum, n| sum + n}
array.inject(0) {|sum, n| sum + n} #initialises zero and then adds numbers to it
array.inject(10) {|sum, n| sum + n} #initialises 10 and then adds numbers to it

binding.pry # debugger