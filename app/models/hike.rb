class Hike < ActiveRecord::Base
  belongs_to :location
  belongs_to :category

end

# new_hike = Hike.new(params)
# new_hike.trail_name = "blah"
# new_hike.save
