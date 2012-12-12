require 'test_helper'

class DailyDataControllerTest < ActionController::TestCase
  setup do
    @daily_datum = daily_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_datum" do
    assert_difference('DailyDatum.count') do
      post :create, daily_datum: { calltag: @daily_datum.calltag, deliveryPackage: @daily_datum.deliveryPackage, deliveryStop: @daily_datum.deliveryStop, didNotAttempt: @daily_datum.didNotAttempt, earlyPickUp: @daily_datum.earlyPickUp, endTime: @daily_datum.endTime, inboundLocalService: @daily_datum.inboundLocalService, latePickUp: @daily_datum.latePickUp, pickupPackage: @daily_datum.pickupPackage, pickupStop: @daily_datum.pickupStop, startTime: @daily_datum.startTime }
    end

    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should show daily_datum" do
    get :show, id: @daily_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_datum
    assert_response :success
  end

  test "should update daily_datum" do
    put :update, id: @daily_datum, daily_datum: { calltag: @daily_datum.calltag, deliveryPackage: @daily_datum.deliveryPackage, deliveryStop: @daily_datum.deliveryStop, didNotAttempt: @daily_datum.didNotAttempt, earlyPickUp: @daily_datum.earlyPickUp, endTime: @daily_datum.endTime, inboundLocalService: @daily_datum.inboundLocalService, latePickUp: @daily_datum.latePickUp, pickupPackage: @daily_datum.pickupPackage, pickupStop: @daily_datum.pickupStop, startTime: @daily_datum.startTime }
    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should destroy daily_datum" do
    assert_difference('DailyDatum.count', -1) do
      delete :destroy, id: @daily_datum
    end

    assert_redirected_to daily_data_path
  end
end
