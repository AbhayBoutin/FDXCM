require 'test_helper'

class FlatPaysControllerTest < ActionController::TestCase
  setup do
    @flat_pay = flat_pays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_pay" do
    assert_difference('FlatPay.count') do
      post :create, flat_pay: { activeBoolean: @flat_pay.activeBoolean, endTime: @flat_pay.endTime, payAmount: @flat_pay.payAmount, startDate: @flat_pay.startDate }
    end

    assert_redirected_to flat_pay_path(assigns(:flat_pay))
  end

  test "should show flat_pay" do
    get :show, id: @flat_pay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_pay
    assert_response :success
  end

  test "should update flat_pay" do
    put :update, id: @flat_pay, flat_pay: { activeBoolean: @flat_pay.activeBoolean, endTime: @flat_pay.endTime, payAmount: @flat_pay.payAmount, startDate: @flat_pay.startDate }
    assert_redirected_to flat_pay_path(assigns(:flat_pay))
  end

  test "should destroy flat_pay" do
    assert_difference('FlatPay.count', -1) do
      delete :destroy, id: @flat_pay
    end

    assert_redirected_to flat_pays_path
  end
end
