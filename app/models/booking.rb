class Booking < ActiveRecord::Base
	belongs_to :rental_item
	attr_accessible :start_date, :end_date, :rental_item_id
	belongs_to :user

	def self.check(start_date, end_date)
		if (start_date >= Date.today) && (end_date >= Date.today)
			return true
		else
			return false
		end
	end


end
