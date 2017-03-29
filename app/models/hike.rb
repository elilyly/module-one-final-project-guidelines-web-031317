class Hike < ActiveRecord::Base
  has_many :hikes
  belongs_to :location
  belongs_to :category

end
