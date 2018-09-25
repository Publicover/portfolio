require 'test_helper'

class TechesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teches_index_url
    assert_response :success
  end

  test "should get show" do
    get teches_show_url
    assert_response :success
  end

  test "should get new" do
    get teches_new_url
    assert_response :success
  end

  test "should get edit" do
    get teches_edit_url
    assert_response :success
  end

  test "should get create" do
    get teches_create_url
    assert_response :success
  end

  test "should get update" do
    get teches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get teches_destroy_url
    assert_response :success
  end

end
