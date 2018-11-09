require 'test_helper'

class WaresListsControllerTest < ActionDispatch::IntegrationTest
  test "should get all_wares" do
    get all_wares_url
    assert_response :success
  end

  test "should get picks" do
    get picks_url
    assert_response :success
  end

  test "should get groups" do
    get groups_url
    assert_response :success
  end

  test "should get waits" do
    get waits_url
    assert_response :success
  end

  test "should get references" do
    get references_url
    assert_response :success
  end

end
