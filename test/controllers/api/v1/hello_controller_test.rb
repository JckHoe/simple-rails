require "test_helper"

class Api::V1::HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_hello_index_url
    assert_response :success
  end
end
