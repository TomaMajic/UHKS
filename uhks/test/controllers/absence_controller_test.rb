require 'test_helper'

class AbsenceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get absence_index_url
    assert_response :success
  end

  test "should get show" do
    get absence_show_url
    assert_response :success
  end

  test "should get new" do
    get absence_new_url
    assert_response :success
  end

  test "should get create" do
    get absence_create_url
    assert_response :success
  end

  test "should get edit" do
    get absence_edit_url
    assert_response :success
  end

  test "should get update" do
    get absence_update_url
    assert_response :success
  end

  test "should get destroy" do
    get absence_destroy_url
    assert_response :success
  end

end
