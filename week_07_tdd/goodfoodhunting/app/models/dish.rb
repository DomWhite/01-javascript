
class Dish < ActiveRecord::Base

#describe relationship (has_many always plural (:taggings))
has_many :taggings

#allows a dish to connect to many tags through the taggings table
has_many :tags, :through => :taggings

mount_uploader :photo, PhotoUploader

end
