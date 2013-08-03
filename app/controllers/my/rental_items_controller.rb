class My::RentalItemsController < ApplicationController

	before_filter :require_login
	def index
		@myrentalitems = current_user.rental_items
	end

	def new
		@myrentalitem = current_user.rental_items.new
	end

	def create
		@myrentalitem = current_user.rental_items(params[:rental_item])
		@myrentalitem.user_id = current_user.id
		if @myrentalitem.save
			redirect_to root_path, :notice => "Your rental item was added"
		else
			render "new"
		end
	end


end
