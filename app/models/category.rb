class Category < ActiveRecord::Base
  has_many :hikes, :locations
end
