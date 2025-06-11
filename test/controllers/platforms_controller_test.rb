require "test_helper"

class PlatformsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get platforms_index_url
    assert_response :success
  end

  test "should get new" do
    get platforms_new_url
    assert_response :success
  end

  test "should get show" do
    get platforms_show_url
    assert_response :success
  end

  test "should get edit" do
    get platforms_edit_url
    assert_response :success
  end
end
