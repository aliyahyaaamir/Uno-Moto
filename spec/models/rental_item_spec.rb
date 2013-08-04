require 'spec_helper'

describe RentalItem do
	it "has a valid factory" do
		FactoryGirl.create(:rental_item).should be_valid
	end
	it "is invalid without a title" do
		FactoryGirl.build(:user, title: nil).should_not be_valid
	end
	it "is invalid without a description" do
		FactoryGirl.build(:user, description: nil).should_not be_valid
	end
	it "is invalid without a price per day" do
		FactoryGirl.build(:user, price_per_day: nil).should_not be_valid
	end
	it "is invalid without a price per week" do
		FactoryGirl.build(:user, price_per_week: nil).should_not be_valid
	end
	it "is invalid without a password" do
		FactoryGirl.build(:user, password: nil).should_not be_valid
	end

end
