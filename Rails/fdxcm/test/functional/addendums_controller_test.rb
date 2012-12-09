require 'test_helper'

class AddendumsControllerTest < ActionController::TestCase
  setup do
    @addendum = addendums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addendums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addendum" do
    assert_difference('Addendum.count') do
      post :create, addendum: { content: @addendum.content, endDate: @addendum.endDate, fedexAddendumName: @addendum.fedexAddendumName, fedexAddendumNumber: @addendum.fedexAddendumNumber, fedexContractorAddendumName: @addendum.fedexContractorAddendumName, fedexContractorAddendumNumber: @addendum.fedexContractorAddendumNumber, startDate: @addendum.startDate }
    end

    assert_redirected_to addendum_path(assigns(:addendum))
  end

  test "should show addendum" do
    get :show, id: @addendum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addendum
    assert_response :success
  end

  test "should update addendum" do
    put :update, id: @addendum, addendum: { content: @addendum.content, endDate: @addendum.endDate, fedexAddendumName: @addendum.fedexAddendumName, fedexAddendumNumber: @addendum.fedexAddendumNumber, fedexContractorAddendumName: @addendum.fedexContractorAddendumName, fedexContractorAddendumNumber: @addendum.fedexContractorAddendumNumber, startDate: @addendum.startDate }
    assert_redirected_to addendum_path(assigns(:addendum))
  end

  test "should destroy addendum" do
    assert_difference('Addendum.count', -1) do
      delete :destroy, id: @addendum
    end

    assert_redirected_to addendums_path
  end
end
