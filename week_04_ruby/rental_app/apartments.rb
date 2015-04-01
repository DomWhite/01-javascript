class Apartments
attr_accessor :ap_name, :price, :is_occupied, :sqft, :num_beds, :num_baths, :tenants

def initialize(ap_name, price, is_occupied, sqft, num_beds, num_baths)
	@ap_name = ap_name
	@price = price
	@is_occupied = is_occupied
	@sqft = sqft
	@num_beds = num_beds
	@num_baths = num_baths
	@tenants = []

end

def to_s
	"Apartment name: #{ap_name}. Costs #{price}. Occupied: #{is_occupied}. Square feet: #{sqft}. Number of bedrooms #{num_beds}. Number of bathrooms: #{num_baths}."
end


end