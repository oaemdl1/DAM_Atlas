require 'test_helper'

class VisitStatusesControllerTest < ActionController::TestCase
  setup do
    @visit_status = visit_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visit_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visit_status" do
    assert_difference('VisitStatus.count') do
      post :create, visit_status: { name: @visit_status.name }
    end

    assert_redirected_to visit_status_path(assigns(:visit_status))
  end

  test "should show visit_status" do
    get :show, id: @visit_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visit_status
    assert_response :success
  end

  test "should update visit_status" do
    patch :update, id: @visit_status, visit_status: { name: @visit_status.name }
    assert_redirected_to visit_status_path(assigns(:visit_status))
  end

  test "should destroy visit_status" do
    assert_difference('VisitStatus.count', -1) do
      delete :destroy, id: @visit_status
    end

    assert_redirected_to visit_statuses_path
  end
end
