require 'test_helper'

class EmployeeManagerAssignmentsControllerTest < ActionController::TestCase
  setup do
    @employee_manager_assignment = employee_manager_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_manager_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_manager_assignment" do
    assert_difference('EmployeeManagerAssignment.count') do
      post :create, employee_manager_assignment: { activeBoolean: @employee_manager_assignment.activeBoolean, endDate: @employee_manager_assignment.endDate, startDate: @employee_manager_assignment.startDate }
    end

    assert_redirected_to employee_manager_assignment_path(assigns(:employee_manager_assignment))
  end

  test "should show employee_manager_assignment" do
    get :show, id: @employee_manager_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_manager_assignment
    assert_response :success
  end

  test "should update employee_manager_assignment" do
    put :update, id: @employee_manager_assignment, employee_manager_assignment: { activeBoolean: @employee_manager_assignment.activeBoolean, endDate: @employee_manager_assignment.endDate, startDate: @employee_manager_assignment.startDate }
    assert_redirected_to employee_manager_assignment_path(assigns(:employee_manager_assignment))
  end

  test "should destroy employee_manager_assignment" do
    assert_difference('EmployeeManagerAssignment.count', -1) do
      delete :destroy, id: @employee_manager_assignment
    end

    assert_redirected_to employee_manager_assignments_path
  end
end
