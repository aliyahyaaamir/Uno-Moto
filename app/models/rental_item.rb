class RentalItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :description, :user_id, :price_per_day, :price_per_week
end
