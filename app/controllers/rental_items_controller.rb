class RentalItemsController < ApplicationController

def index
	@rentals = RentalItem.all
end

def show
	@rentalitem = RentalItem.find(params[:id])
	@booking = @rentalitem.bookings.new
end

def update
	binding.pry
		@rentalitem = RentalItem.find(params[:id])
		if @rentalitem.update_attributes(params[:rental_item])
			redirect_to rental_item_path(params[:id]), :notice => "Your changes have been saved!"
		else

		end
end

end
