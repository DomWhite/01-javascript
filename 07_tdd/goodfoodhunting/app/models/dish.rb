
class Dish < ActiveRecord::Base
has_many :likes
#describe relationship (has_many always plural (:taggings))
has_many :taggings

#allows a dish to connect to many tags through the taggings table
has_many :tags, :through => :taggings

mount_uploader :photo, PhotoUploader


def self.top_three
  joins(:likes).
    select('dishes.title) as "abc"').
    group('dishes.title, likes.dish_id')
end

# single line notation of above method
# scope :top_three, -> { order(:title).limit(3) }

# example called by "Dish.first.like_count"
def like_count
  likes.count
end

# single line notation of above method
# scope :like_count, -> { likes.count }

# get likes by temporary join table
# Dish.joins(:likes).group(:title).count (see in rails console for ouput)

end
