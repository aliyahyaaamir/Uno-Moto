class RentalItemsController < ApplicationController

def index
	@rentals = RentalItem.all
end

end
