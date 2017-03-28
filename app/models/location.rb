class Location < ActiveRecord::Base
  has_many :hikes
  has_many :categories, through: :hikes
end
