require 'test_helper'

class ProductionPaysControllerTest < ActionController::TestCase
  setup do
    @production_pay = production_pays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production_pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production_pay" do
    assert_difference('ProductionPay.count') do
      post :create, production_pay: { activeBoolean: @production_pay.activeBoolean, delivery_package_pay: @production_pay.delivery_package_pay, delivery_stop_pay: @production_pay.delivery_stop_pay, endDate: @production_pay.endDate, hourly_pay: @production_pay.hourly_pay, incident_dock_pay: @production_pay.incident_dock_pay, pickup_package_pay: @production_pay.pickup_package_pay, pickup_stop_pay: @production_pay.pickup_stop_pay, startDate: @production_pay.startDate, task_pay: @production_pay.task_pay }
    end

    assert_redirected_to production_pay_path(assigns(:production_pay))
  end

  test "should show production_pay" do
    get :show, id: @production_pay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production_pay
    assert_response :success
  end

  test "should update production_pay" do
    put :update, id: @production_pay, production_pay: { activeBoolean: @production_pay.activeBoolean, delivery_package_pay: @production_pay.delivery_package_pay, delivery_stop_pay: @production_pay.delivery_stop_pay, endDate: @production_pay.endDate, hourly_pay: @production_pay.hourly_pay, incident_dock_pay: @production_pay.incident_dock_pay, pickup_package_pay: @production_pay.pickup_package_pay, pickup_stop_pay: @production_pay.pickup_stop_pay, startDate: @production_pay.startDate, task_pay: @production_pay.task_pay }
    assert_redirected_to production_pay_path(assigns(:production_pay))
  end

  test "should destroy production_pay" do
    assert_difference('ProductionPay.count', -1) do
      delete :destroy, id: @production_pay
    end

    assert_redirected_to production_pays_path
  end
end
