require "test_helper"

class SiteworkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get siteworkers_index_url
    assert_response :success
  end

  test "should get new" do
    get siteworkers_new_url
    assert_response :success
  end
end
