require 'test_helper'

class Web::CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get web_carts_show_url
    assert_response :success
  end

end
