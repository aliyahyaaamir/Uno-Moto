class BookingsController < ApplicationController


	#need to add a before filter here
	def new
		@booking = Booking.new
	end

	def create
		@booking_hash = (params[:booking])
		@start_date = DateTime.strptime(@booking_hash[:start_date], "%m/%d/%Y")
		@end_date = DateTime.strptime(@booking_hash[:end_date], "%m/%d/%Y")
		@booking = Booking.new(start_date: @start_date, end_date: @end_date)
		@rentalitem = RentalItem.find(params[:rental_item_id].to_i)
		@booking.user_id = current_user.id
		@booking.rental_item_id = params[:rental_item_id]
		binding.pry
		if Booking.check(@start_date, @end_date)
			@booking.save
			redirect_to root_path, :notice => "Your booking has been saved!"
		else
			redirect_to root_path, :notice => "An error has occurred please try again"
		end
	end
end
