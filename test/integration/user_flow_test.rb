require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest
	test "user has a link to sign in" do 
		visit '/'
		assert root_path, current_path
		print page.html
		assert has_link?('Sign in')
		assert has_link?('Sign up')
	end
end
