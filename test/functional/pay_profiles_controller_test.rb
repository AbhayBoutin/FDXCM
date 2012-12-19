require 'test_helper'

class PayProfilesControllerTest < ActionController::TestCase
  setup do
    @pay_profile = pay_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_profile" do
    assert_difference('PayProfile.count') do
      post :create, pay_profile: { profileName: @pay_profile.profileName }
    end

    assert_redirected_to pay_profile_path(assigns(:pay_profile))
  end

  test "should show pay_profile" do
    get :show, id: @pay_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_profile
    assert_response :success
  end

  test "should update pay_profile" do
    put :update, id: @pay_profile, pay_profile: { profileName: @pay_profile.profileName }
    assert_redirected_to pay_profile_path(assigns(:pay_profile))
  end

  test "should destroy pay_profile" do
    assert_difference('PayProfile.count', -1) do
      delete :destroy, id: @pay_profile
    end

    assert_redirected_to pay_profiles_path
  end
end
