require 'test_helper'

class DailyDataVehiclesControllerTest < ActionController::TestCase
  setup do
    @daily_data_vehicle = daily_data_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_data_vehicle" do
    assert_difference('DailyDataVehicle.count') do
      post :create, daily_data_vehicle: {  }
    end

    assert_redirected_to daily_data_vehicle_path(assigns(:daily_data_vehicle))
  end

  test "should show daily_data_vehicle" do
    get :show, id: @daily_data_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_data_vehicle
    assert_response :success
  end

  test "should update daily_data_vehicle" do
    put :update, id: @daily_data_vehicle, daily_data_vehicle: {  }
    assert_redirected_to daily_data_vehicle_path(assigns(:daily_data_vehicle))
  end

  test "should destroy daily_data_vehicle" do
    assert_difference('DailyDataVehicle.count', -1) do
      delete :destroy, id: @daily_data_vehicle
    end

    assert_redirected_to daily_data_vehicles_path
  end
end
