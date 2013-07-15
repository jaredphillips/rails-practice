require 'test_helper'
class UserFlowTest < ActionDispatch::IntegrationTest
	test "user has a link to sign in" do 
		visit '/'
		assert has_link?('Sign in')
		assert has_link?('Sign up')
	end

	test "user can sign up" do
		@user = 
		visit '/'
		click_link('Sign up')
		assert new_user_path(@user), current_path
		assert_selector '.field', count: 5
		assert_selector '.actions', count: 1


	end
end
