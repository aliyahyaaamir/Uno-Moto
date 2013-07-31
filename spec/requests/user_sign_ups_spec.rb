require 'spec_helper'

describe "UserSignUps" do
	it "checks navigation to see if user can navigate to Sign Up Page" do
		visit '/'
		# user = FactoryGirl.create(:user)
		assert find('#menu').has_link?('Sign Up')
		click_link "Sign Up"
		assert_equal new_session_path, current_path
	end

end
