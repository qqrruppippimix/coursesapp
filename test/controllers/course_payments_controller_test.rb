require 'test_helper'

class CoursePaymentsControllerTest < ActionController::TestCase
  setup do
    @course_payment = course_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_payment" do
    assert_difference('CoursePayment.count') do
      post :create, course_payment: {  }
    end

    assert_redirected_to course_payment_path(assigns(:course_payment))
  end

  test "should show course_payment" do
    get :show, id: @course_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_payment
    assert_response :success
  end

  test "should update course_payment" do
    patch :update, id: @course_payment, course_payment: {  }
    assert_redirected_to course_payment_path(assigns(:course_payment))
  end

  test "should destroy course_payment" do
    assert_difference('CoursePayment.count', -1) do
      delete :destroy, id: @course_payment
    end

    assert_redirected_to course_payments_path
  end
end
