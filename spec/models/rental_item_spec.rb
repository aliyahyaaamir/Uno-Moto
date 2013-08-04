require 'spec_helper'

describe RentalItem do
	it "has a valid factory" do
		FactoryGirl.create(:rental_item).should be_valid
	end
	it "is invalid without a title" do
		FactoryGirl.build(:rental_item, title: nil).should_not be_valid
	end
	it "is invalid without a description" do
		FactoryGirl.build(:rental_item, description: nil).should_not be_valid
	end
	it "is invalid without a price per day" do
		FactoryGirl.build(:rental_item, price_per_day: nil).should_not be_valid
	end
	it "is invalid without a price per week" do
		FactoryGirl.build(:rental_item, price_per_week: nil).should_not be_valid
	end

end
