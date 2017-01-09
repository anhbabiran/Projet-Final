require 'test_helper'

class UserLapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_lap = user_laps(:one)
  end

  test "should get index" do
    get user_laps_url
    assert_response :success
  end

  test "should get new" do
    get new_user_lap_url
    assert_response :success
  end

  test "should create user_lap" do
    assert_difference('UserLap.count') do
      post user_laps_url, params: { user_lap: { email: @user_lap.email, name: @user_lap.name } }
    end

    assert_redirected_to user_lap_url(UserLap.last)
  end

  test "should show user_lap" do
    get user_lap_url(@user_lap)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_lap_url(@user_lap)
    assert_response :success
  end

  test "should update user_lap" do
    patch user_lap_url(@user_lap), params: { user_lap: { email: @user_lap.email, name: @user_lap.name } }
    assert_redirected_to user_lap_url(@user_lap)
  end

  test "should destroy user_lap" do
    assert_difference('UserLap.count', -1) do
      delete user_lap_url(@user_lap)
    end

    assert_redirected_to user_laps_url
  end
end
