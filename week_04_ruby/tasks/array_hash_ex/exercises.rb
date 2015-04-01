require "pry"
############ Section A
a = ["Anil", "Erik", "Jonathan"]

a[1]
a << "Dominic"

############# Section B

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

h[1]
h[2] #or h[:two]
h["two"]
h[3] = "Three"  #add new key/value to hash
h[:four] = 4

############# Section C

is = {true => "It's true!", false => "It's false"}

# Resolving each expression to either true or false and then this becomes the key
# What is the return value of is[2 + 2 == 4]? It's true
# What is the return value of is["Erik" == "Jonathan"]? It's false
# What is the return value of is[9 > 10]? It's false

#Looking for actual key
# What is the return value of is[0]?  nil (not in the hash)
# What is the return value of is["Erik"]? nil (not in hash)

############# Section D

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers] << 7
users["Dominic"] = {:twitter => "DW", :favorite_numbers => [1, 2, 3]}
users["Erik"][:favorite_numbers].min
users["Anil"][:favorite_numbers].select { |num| num.even? }
users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers]

users.map do |key, value|			#map is useful for transforming
	value[:favorite_numbers]  
end.flatten

binding.pry

