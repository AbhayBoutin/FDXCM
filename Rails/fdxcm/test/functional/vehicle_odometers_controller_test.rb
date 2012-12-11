require 'test_helper'

class VehicleOdometersControllerTest < ActionController::TestCase
  setup do
    @vehicle_odometer = vehicle_odometers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_odometers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_odometer" do
    assert_difference('VehicleOdometer.count') do
      post :create, vehicle_odometer: { endDate: @vehicle_odometer.endDate, odometerReading: @vehicle_odometer.odometerReading, startDate: @vehicle_odometer.startDate }
    end

    assert_redirected_to vehicle_odometer_path(assigns(:vehicle_odometer))
  end

  test "should show vehicle_odometer" do
    get :show, id: @vehicle_odometer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_odometer
    assert_response :success
  end

  test "should update vehicle_odometer" do
    put :update, id: @vehicle_odometer, vehicle_odometer: { endDate: @vehicle_odometer.endDate, odometerReading: @vehicle_odometer.odometerReading, startDate: @vehicle_odometer.startDate }
    assert_redirected_to vehicle_odometer_path(assigns(:vehicle_odometer))
  end

  test "should destroy vehicle_odometer" do
    assert_difference('VehicleOdometer.count', -1) do
      delete :destroy, id: @vehicle_odometer
    end

    assert_redirected_to vehicle_odometers_path
  end
end
