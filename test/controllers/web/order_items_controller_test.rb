require 'test_helper'

class Web::OrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get web_order_items_create_url
    assert_response :success
  end

  test "should get update" do
    get web_order_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get web_order_items_destroy_url
    assert_response :success
  end

end
