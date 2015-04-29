require 'pry'
require './person'
require './apartments'
require './buildings'


def create_tenant
	puts "Tenants name?"
	name = gets.chomp.to_s
	puts "Tenant age?"
	age = gets.chomp.to_i
	puts "Tenant gender"
	gender = gets.chomp.to_s
	new_tenant = Person.new(name, age, gender) #actual creating of objects by looking up the class

	puts "which apartment do they live in?"
	apartment = gets.chomp
	
	apartment.tenants << new_tenant
end

man_unity = Buildings.new("20 Swanston", "Gothic", true, false, 17)

ap1 = Apartments.new(600.00, false, 400, 3, 2)


binding.pry