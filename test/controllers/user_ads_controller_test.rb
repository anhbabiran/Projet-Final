require 'test_helper'

class UserAdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_ad = user_ads(:one)
  end

  test "should get index" do
    get user_ads_url
    assert_response :success
  end

  test "should get new" do
    get new_user_ad_url
    assert_response :success
  end

  test "should create user_ad" do
    assert_difference('UserAd.count') do
      post user_ads_url, params: { user_ad: { email: @user_ad.email, name: @user_ad.name } }
    end

    assert_redirected_to user_ad_url(UserAd.last)
  end

  test "should show user_ad" do
    get user_ad_url(@user_ad)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_ad_url(@user_ad)
    assert_response :success
  end

  test "should update user_ad" do
    patch user_ad_url(@user_ad), params: { user_ad: { email: @user_ad.email, name: @user_ad.name } }
    assert_redirected_to user_ad_url(@user_ad)
  end

  test "should destroy user_ad" do
    assert_difference('UserAd.count', -1) do
      delete user_ad_url(@user_ad)
    end

    assert_redirected_to user_ads_url
  end
end
