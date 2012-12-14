require 'test_helper'

class DailyDataDeliveryExceptionsControllerTest < ActionController::TestCase
  setup do
    @daily_data_delivery_exception = daily_data_delivery_exceptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data_delivery_exceptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_data_delivery_exception" do
    assert_difference('DailyDataDeliveryException.count') do
      post :create, daily_data_delivery_exception: { endDate: @daily_data_delivery_exception.endDate, startDate: @daily_data_delivery_exception.startDate }
    end

    assert_redirected_to daily_data_delivery_exception_path(assigns(:daily_data_delivery_exception))
  end

  test "should show daily_data_delivery_exception" do
    get :show, id: @daily_data_delivery_exception
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_data_delivery_exception
    assert_response :success
  end

  test "should update daily_data_delivery_exception" do
    put :update, id: @daily_data_delivery_exception, daily_data_delivery_exception: { endDate: @daily_data_delivery_exception.endDate, startDate: @daily_data_delivery_exception.startDate }
    assert_redirected_to daily_data_delivery_exception_path(assigns(:daily_data_delivery_exception))
  end

  test "should destroy daily_data_delivery_exception" do
    assert_difference('DailyDataDeliveryException.count', -1) do
      delete :destroy, id: @daily_data_delivery_exception
    end

    assert_redirected_to daily_data_delivery_exceptions_path
  end
end
