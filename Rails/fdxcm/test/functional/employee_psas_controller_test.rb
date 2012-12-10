require 'test_helper'

class EmployeePsasControllerTest < ActionController::TestCase
  setup do
    @employee_psa = employee_psas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_psas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_psa" do
    assert_difference('EmployeePsa.count') do
      post :create, employee_psa: { activeBoolean: @employee_psa.activeBoolean, endDate: @employee_psa.endDate, startDate: @employee_psa.startDate }
    end

    assert_redirected_to employee_psa_path(assigns(:employee_psa))
  end

  test "should show employee_psa" do
    get :show, id: @employee_psa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_psa
    assert_response :success
  end

  test "should update employee_psa" do
    put :update, id: @employee_psa, employee_psa: { activeBoolean: @employee_psa.activeBoolean, endDate: @employee_psa.endDate, startDate: @employee_psa.startDate }
    assert_redirected_to employee_psa_path(assigns(:employee_psa))
  end

  test "should destroy employee_psa" do
    assert_difference('EmployeePsa.count', -1) do
      delete :destroy, id: @employee_psa
    end

    assert_redirected_to employee_psas_path
  end
end
