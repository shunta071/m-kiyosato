require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get to@" do
    get home_to@_url
    assert_response :success
  end

end
