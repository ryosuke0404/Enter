require "test_helper"

class DetailGovermentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detail_goverment_index_url
    assert_response :success
  end
end
