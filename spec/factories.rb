FactoryGirl.define do
	factory :user do
		first_name "John"
		last_name "Doe"
		sequence(:username) { |x| "john#{x}"}
		sequence(:email) { |n| "john#{n}@doe.com"}
		password "password"
	end

	factory :rental_item do
		sequence(:title) { |n| "Item#{n}"
		description "Rental item"
		price_per_day 30
		price_per_week 120
		user
	end
end