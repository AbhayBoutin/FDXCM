require 'test_helper'

class DeliveryExceptionsControllerTest < ActionController::TestCase
  setup do
    @delivery_exception = delivery_exceptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_exceptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_exception" do
    assert_difference('DeliveryException.count') do
      post :create, delivery_exception: { exceptionDescription: @delivery_exception.exceptionDescription, exceptionType: @delivery_exception.exceptionType }
    end

    assert_redirected_to delivery_exception_path(assigns(:delivery_exception))
  end

  test "should show delivery_exception" do
    get :show, id: @delivery_exception
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_exception
    assert_response :success
  end

  test "should update delivery_exception" do
    put :update, id: @delivery_exception, delivery_exception: { exceptionDescription: @delivery_exception.exceptionDescription, exceptionType: @delivery_exception.exceptionType }
    assert_redirected_to delivery_exception_path(assigns(:delivery_exception))
  end

  test "should destroy delivery_exception" do
    assert_difference('DeliveryException.count', -1) do
      delete :destroy, id: @delivery_exception
    end

    assert_redirected_to delivery_exceptions_path
  end
end
