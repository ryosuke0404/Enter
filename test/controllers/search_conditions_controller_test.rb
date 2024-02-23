require "test_helper"

class SearchConditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get search_conditions_new_url
    assert_response :success
  end
end
