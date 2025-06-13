require "test_helper"

class PerformersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get performers_index_url
    assert_response :success
  end

  test "should get new" do
    get performers_new_url
    assert_response :success
  end

  test "should get show" do
    get performers_show_url
    assert_response :success
  end

  test "should get edit" do
    get performers_edit_url
    assert_response :success
  end
end
