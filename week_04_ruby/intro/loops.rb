
# a single line comment

=begin
	this is a 
	multiline comment
=end


	
number = 0

while number < 10
	puts "this is bottle #{number}"
	number = number + 1
end

number = 0

until number > 10
	puts "this is bottle #{number}"
	number += 1
end

# while !bank_account.empty?
# 	puts 'party on'
# end

# until bank_account.empty?
# 	puts 'party on'
# end

dumplings_devoured = 0

begin 
	puts "eat dumpling"
	dumplings_devoured = dumplings_devoured + 1
end while dumplings_devoured < 50

3.times do 					#use if you know how many times
	puts "beetlejuice"
end

1.upto(3) do 				#use if not known going up
	puts "beetlejuice"
end

3.downto(0) do 				#use if not known going down
	puts "beetlejuice"
end
