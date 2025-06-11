require "test_helper"

class YearControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get year_index_url
    assert_response :success
  end

  test "should get new" do
    get year_new_url
    assert_response :success
  end

  test "should get show" do
    get year_show_url
    assert_response :success
  end

  test "should get edit" do
    get year_edit_url
    assert_response :success
  end
end
