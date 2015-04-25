class Tagging < ActiveRecord::Base

#this is the joining table

# dish_id _|_ tag_id
#    1     |    1
# 				 |

# the relationships here are one to one	

	belongs_to :dish
	belongs_to :tag

end
