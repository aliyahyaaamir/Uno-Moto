class LocationsController < ApplicationController

	def create
		@location = Location.new(params[:location])
		if @location.save
			:notice => "saved"
		else
			:notice => "nope"
		end
	end

end
