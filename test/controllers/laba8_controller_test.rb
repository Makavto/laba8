require "test_helper"

class Laba8ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get laba8_input_url
    assert_response :success
  end

  test "should get view" do
    get laba8_view_url
    assert_response :success
  end
end
