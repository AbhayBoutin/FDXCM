require 'test_helper'

class PsaStatesControllerTest < ActionController::TestCase
  setup do
    @psa_state = psa_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psa_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psa_state" do
    assert_difference('PsaState.count') do
      post :create, psa_state: {  }
    end

    assert_redirected_to psa_state_path(assigns(:psa_state))
  end

  test "should show psa_state" do
    get :show, id: @psa_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psa_state
    assert_response :success
  end

  test "should update psa_state" do
    put :update, id: @psa_state, psa_state: {  }
    assert_redirected_to psa_state_path(assigns(:psa_state))
  end

  test "should destroy psa_state" do
    assert_difference('PsaState.count', -1) do
      delete :destroy, id: @psa_state
    end

    assert_redirected_to psa_states_path
  end
end
