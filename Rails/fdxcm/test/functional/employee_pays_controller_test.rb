require 'test_helper'

class EmployeePaysControllerTest < ActionController::TestCase
  setup do
    @employee_pay = employee_pays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_pay" do
    assert_difference('EmployeePay.count') do
      post :create, employee_pay: { endDate: @employee_pay.endDate, startDate: @employee_pay.startDate }
    end

    assert_redirected_to employee_pay_path(assigns(:employee_pay))
  end

  test "should show employee_pay" do
    get :show, id: @employee_pay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_pay
    assert_response :success
  end

  test "should update employee_pay" do
    put :update, id: @employee_pay, employee_pay: { endDate: @employee_pay.endDate, startDate: @employee_pay.startDate }
    assert_redirected_to employee_pay_path(assigns(:employee_pay))
  end

  test "should destroy employee_pay" do
    assert_difference('EmployeePay.count', -1) do
      delete :destroy, id: @employee_pay
    end

    assert_redirected_to employee_pays_path
  end
end
