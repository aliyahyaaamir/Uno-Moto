class My::RentalItemsController < ApplicationController

	before_filter :require_login
	def index
		@myrentalitems = current_user.rental_items
	end

	def new
		@myrentalitem = current_user.rental_items.new
	end

	def create

		@myrentalitem = RentalItem.new(params[:rental_item])
		@myrentalitem.user_id = current_user.id
		if @myrentalitem.save && @location.save
			redirect_to root_path, :notice => "Your rental item was added"
		else
			render "new"
		end
	end

	def edit
		if current_user.rental_items.exists?(params[:id])
			@myrentalitem = current_user.rental_items.find(params[:id])
		else
			redirect_to root_path, :notice =>"Rental item does not exist"
		end
	end

	def update
		@myrentalitem = current_user.rental_items.find(params[:id])
		if @myrentalitem.update_attributes(params[:rental_item])
			redirect_to my_rental_items_path, :notice => "Your changes have been saved!"
		else
			render "edit"
		end
	end

	def show
		@myrentalitem = current_user.rental_items.find(params[:id])
	end

	def destroy
		@myrentalitem = current_user.rental_items.find(params[:id])
		@myrentalitem.destroy
		redirect_to my_rental_items_path, :notice => "Your item has been deleted"
	end
end
