class Booking < ActiveRecord::Base
	attr_accessible :start_date, :end_date
	belongs_to :rental_item
	belongs_to :user
end
