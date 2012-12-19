require 'test_helper'

class EmployeeTerminalsControllerTest < ActionController::TestCase
  setup do
    @employee_terminal = employee_terminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_terminals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_terminal" do
    assert_difference('EmployeeTerminal.count') do
      post :create, employee_terminal: { activeBoolean: @employee_terminal.activeBoolean, endDate: @employee_terminal.endDate, startDate: @employee_terminal.startDate }
    end

    assert_redirected_to employee_terminal_path(assigns(:employee_terminal))
  end

  test "should show employee_terminal" do
    get :show, id: @employee_terminal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_terminal
    assert_response :success
  end

  test "should update employee_terminal" do
    put :update, id: @employee_terminal, employee_terminal: { activeBoolean: @employee_terminal.activeBoolean, endDate: @employee_terminal.endDate, startDate: @employee_terminal.startDate }
    assert_redirected_to employee_terminal_path(assigns(:employee_terminal))
  end

  test "should destroy employee_terminal" do
    assert_difference('EmployeeTerminal.count', -1) do
      delete :destroy, id: @employee_terminal
    end

    assert_redirected_to employee_terminals_path
  end
end
