class RentalItems::TagsController < ApplicationController

def show
	@rentalitems = RentalItem.all
	@rentitem = []
	@rentalitems.each do |rentalitem|
		rentalitem.tags.each do |rental|
			if rental.name == params[:id]
				@rentitem << rentalitem
			end
		end
	end
end

end
