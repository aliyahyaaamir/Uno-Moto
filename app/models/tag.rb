class Tag < ActiveRecord::Base
	has_and_belongs_to_many :rental_items
	attr_accessible :name

end
