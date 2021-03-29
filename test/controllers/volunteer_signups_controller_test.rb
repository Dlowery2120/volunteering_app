require "test_helper"

class VolunteerSignupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get volunteer_signups_index_url
    assert_response :success
  end

  test "should get show" do
    get volunteer_signups_show_url
    assert_response :success
  end

  test "should get new" do
    get volunteer_signups_new_url
    assert_response :success
  end

  test "should get create" do
    get volunteer_signups_create_url
    assert_response :success
  end

  test "should get edit" do
    get volunteer_signups_edit_url
    assert_response :success
  end

  test "should get update" do
    get volunteer_signups_update_url
    assert_response :success
  end

  test "should get delete" do
    get volunteer_signups_delete_url
    assert_response :success
  end
end
