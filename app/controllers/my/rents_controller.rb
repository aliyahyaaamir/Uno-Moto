class My::RentsController < ApplicationController

	before_filter :require_login

	def index
		@rentals = current_user.bookings
	end

end
