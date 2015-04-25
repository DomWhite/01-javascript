class Tag < ActiveRecord::Base

	#describe relationship (has_many always plural (:taggings))
	has_many :taggings

	#allows a tag to connect to many dishes through the taggings table
	has_many :dishes, :through => :taggings
end