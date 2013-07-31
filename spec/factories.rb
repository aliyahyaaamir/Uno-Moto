FactoryGirl.define do
	factory :user do
		first_name "John"
		last_name "Doe"
		sequence(:username) { |x| "john#{x}"}
		sequence(:email) { |n| "john#{n}@doe.com"}
		password "password"
	end
end