class RentalItems::PlacesController < ApplicationController
	def show
		@rentalitems = RentalItem.all
		@rental = []
		@rentalitems.each do |rentalitem|
			if rentalitem.location.city == params[:id]
				@rental << rentalitem
			end
		end

	end
end
