require 'test_helper'

class Web::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get web_orders_show_url
    assert_response :success
  end

  test "should get new" do
    get web_orders_new_url
    assert_response :success
  end

end
