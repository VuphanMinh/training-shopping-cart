require 'test_helper'

class Web::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_products_index_url
    assert_response :success
  end

  test "should get new" do
    get web_products_new_url
    assert_response :success
  end

  test "should get edit" do
    get web_products_edit_url
    assert_response :success
  end

end
