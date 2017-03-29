class Category < ActiveRecord::Base
  has_many :hikes
  has_many :locations, through: :hikes
end
