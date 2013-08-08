class Booking < ActiveRecord::Base
	belongs_to :rental_item
	attr_accessible :start_date, :end_date, :rental_item_id
	belongs_to :user

	
end
