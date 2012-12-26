require 'test_helper'

class PsaReviewsControllerTest < ActionController::TestCase
  setup do
    @psa_review = psa_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psa_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psa_review" do
    assert_difference('PsaReview.count') do
      post :create, psa_review: {  }
    end

    assert_redirected_to psa_review_path(assigns(:psa_review))
  end

  test "should show psa_review" do
    get :show, id: @psa_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psa_review
    assert_response :success
  end

  test "should update psa_review" do
    put :update, id: @psa_review, psa_review: {  }
    assert_redirected_to psa_review_path(assigns(:psa_review))
  end

  test "should destroy psa_review" do
    assert_difference('PsaReview.count', -1) do
      delete :destroy, id: @psa_review
    end

    assert_redirected_to psa_reviews_path
  end
end
