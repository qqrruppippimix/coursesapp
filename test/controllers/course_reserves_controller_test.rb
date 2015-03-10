require 'test_helper'

class CourseReservesControllerTest < ActionController::TestCase
  setup do
    @course_reserf = course_reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_reserf" do
    assert_difference('CourseReserve.count') do
      post :create, course_reserf: {  }
    end

    assert_redirected_to course_reserf_path(assigns(:course_reserf))
  end

  test "should show course_reserf" do
    get :show, id: @course_reserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_reserf
    assert_response :success
  end

  test "should update course_reserf" do
    patch :update, id: @course_reserf, course_reserf: {  }
    assert_redirected_to course_reserf_path(assigns(:course_reserf))
  end

  test "should destroy course_reserf" do
    assert_difference('CourseReserve.count', -1) do
      delete :destroy, id: @course_reserf
    end

    assert_redirected_to course_reserves_path
  end
end
