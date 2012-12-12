require 'test_helper'

class PsazipsControllerTest < ActionController::TestCase
  setup do
    @psazip = psazips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psazips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psazip" do
    assert_difference('Psazip.count') do
      post :create, psazip: {  }
    end

    assert_redirected_to psazip_path(assigns(:psazip))
  end

  test "should show psazip" do
    get :show, id: @psazip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psazip
    assert_response :success
  end

  test "should update psazip" do
    put :update, id: @psazip, psazip: {  }
    assert_redirected_to psazip_path(assigns(:psazip))
  end

  test "should destroy psazip" do
    assert_difference('Psazip.count', -1) do
      delete :destroy, id: @psazip
    end

    assert_redirected_to psazips_path
  end
end
