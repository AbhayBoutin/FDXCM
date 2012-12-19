require 'test_helper'

class PsasControllerTest < ActionController::TestCase
  setup do
    @psa = psas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psa" do
    assert_difference('Psa.count') do
      post :create, psa: { activeBoolean: @psa.activeBoolean, contractorPSAName: @psa.contractorPSAName, contractorPSANumber: @psa.contractorPSANumber, endDate: @psa.endDate, fedexPSAName: @psa.fedexPSAName, fedexPSANumber: @psa.fedexPSANumber, startDate: @psa.startDate }
    end

    assert_redirected_to psa_path(assigns(:psa))
  end

  test "should show psa" do
    get :show, id: @psa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psa
    assert_response :success
  end

  test "should update psa" do
    put :update, id: @psa, psa: { activeBoolean: @psa.activeBoolean, contractorPSAName: @psa.contractorPSAName, contractorPSANumber: @psa.contractorPSANumber, endDate: @psa.endDate, fedexPSAName: @psa.fedexPSAName, fedexPSANumber: @psa.fedexPSANumber, startDate: @psa.startDate }
    assert_redirected_to psa_path(assigns(:psa))
  end

  test "should destroy psa" do
    assert_difference('Psa.count', -1) do
      delete :destroy, id: @psa
    end

    assert_redirected_to psas_path
  end
end
