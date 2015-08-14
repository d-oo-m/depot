require 'test_helper'

class StoreControllerTest < ActionController::TestCase
	test "should get index" do
		get :index
		assert_response :success
		assert_select '#columns #side a', minimum: 4
		assert_select '#main .entry', 3
		assert_select 'h3', 'Programming Ruby'
		assert_select '.price', /\$[,\d]+\.\d\d/
	end

	test "index should render correct template and layout" do
		get :index
		assert_template :index
		assert_template layout: "layouts/application"
	end

end
