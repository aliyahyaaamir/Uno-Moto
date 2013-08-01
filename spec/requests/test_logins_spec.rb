require 'spec_helper'

describe "TestLogins" do
	it "checks to see that a user is able to login" do
		pass = "this-is-a-password"
		user = FactoryGirl.create :user, password: pass
		visit '/sessions/new'

		fill_in "email", with: user.email
		fill_in "password", with: pass
		click_button "Login"
		assert page.has_content?('Logged in!')
	end
end
