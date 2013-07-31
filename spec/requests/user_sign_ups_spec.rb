require 'spec_helper'

describe "UserSignUps" do
	it "checks navigation to see if user can navigate to Sign Up Page" do
		visit '/'
		assert find('#menu').has_link?('Sign Up')
		
		find('#mainNav').click_link('Sign Up')
		assert_equal new_user_path, current_path
	end

	# it "checks the sign up page for correct fields" do
	# 	visit '/sessions/new'

	# 	find('#')
	# 	# user = FactoryGirl.create(:user)
	# 	# fill_in "user[email]", :with => user.email

	# 	need to correct sessions type with users/new
end
