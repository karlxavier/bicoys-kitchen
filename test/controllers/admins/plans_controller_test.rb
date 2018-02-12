require 'test_helper'

class Admins::PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_plans_index_url
    assert_response :success
  end

end
