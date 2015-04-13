## Convention is databased named in plural class is singular
# look for a table named Dishes
class Post < ActiveRecord::Base

	validates(:title, :presence => true) #JSON notation :title, presence: true

	belongs_to :category #singular because belongs_to means belongs to one
end