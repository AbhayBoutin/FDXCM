require 'test_helper'

class DailyDataEmployeesControllerTest < ActionController::TestCase
  setup do
    @daily_data_employee = daily_data_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_data_employee" do
    assert_difference('DailyDataEmployee.count') do
      post :create, daily_data_employee: {  }
    end

    assert_redirected_to daily_data_employee_path(assigns(:daily_data_employee))
  end

  test "should show daily_data_employee" do
    get :show, id: @daily_data_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_data_employee
    assert_response :success
  end

  test "should update daily_data_employee" do
    put :update, id: @daily_data_employee, daily_data_employee: {  }
    assert_redirected_to daily_data_employee_path(assigns(:daily_data_employee))
  end

  test "should destroy daily_data_employee" do
    assert_difference('DailyDataEmployee.count', -1) do
      delete :destroy, id: @daily_data_employee
    end

    assert_redirected_to daily_data_employees_path
  end
end
