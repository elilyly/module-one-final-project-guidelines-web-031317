class Hike < ActiveRecord::Base
  has_many :hikes
  belongs_to :locations
end
