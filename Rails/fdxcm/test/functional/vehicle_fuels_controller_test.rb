require 'test_helper'

class VehicleFuelsControllerTest < ActionController::TestCase
  setup do
    @vehicle_fuel = vehicle_fuels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_fuels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_fuel" do
    assert_difference('VehicleFuel.count') do
      post :create, vehicle_fuel: { fuelTankSize: @vehicle_fuel.fuelTankSize, fuelType: @vehicle_fuel.fuelType, mpg: @vehicle_fuel.mpg }
    end

    assert_redirected_to vehicle_fuel_path(assigns(:vehicle_fuel))
  end

  test "should show vehicle_fuel" do
    get :show, id: @vehicle_fuel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_fuel
    assert_response :success
  end

  test "should update vehicle_fuel" do
    put :update, id: @vehicle_fuel, vehicle_fuel: { fuelTankSize: @vehicle_fuel.fuelTankSize, fuelType: @vehicle_fuel.fuelType, mpg: @vehicle_fuel.mpg }
    assert_redirected_to vehicle_fuel_path(assigns(:vehicle_fuel))
  end

  test "should destroy vehicle_fuel" do
    assert_difference('VehicleFuel.count', -1) do
      delete :destroy, id: @vehicle_fuel
    end

    assert_redirected_to vehicle_fuels_path
  end
end
