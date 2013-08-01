require 'spec_helper'

describe "UserSignUps" do
	it "checks navigation to see if user can navigate to Sign Up Page" do
		visit '/'
		assert find('#menu').has_link?('Sign Up')
		
		find('#mainNav').click_link('Sign Up')
		assert_equal new_user_path, current_path
	end

	it "checks the sign up page for correct fields" do
		visit "/users/new"

		assert find('#user_first_name')
		assert find('#user_last_name')
		assert find('#user_email')
		assert find('#user_password')

		assert has_content?('Sign Up!')
		# user = FactoryGirl.create(:user)
		# fill_in "user[email]", :with => user.email
	end
		
end
