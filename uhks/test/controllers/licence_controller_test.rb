require 'test_helper'

class LicenceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get licence_index_url
    assert_response :success
  end

  test "should get show" do
    get licence_show_url
    assert_response :success
  end

  test "should get new" do
    get licence_new_url
    assert_response :success
  end

  test "should get create" do
    get licence_create_url
    assert_response :success
  end

  test "should get edit" do
    get licence_edit_url
    assert_response :success
  end

  test "should get update" do
    get licence_update_url
    assert_response :success
  end

  test "should get destroy" do
    get licence_destroy_url
    assert_response :success
  end

end
