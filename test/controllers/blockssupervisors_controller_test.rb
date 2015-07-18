require 'test_helper'

class BlockssupervisorsControllerTest < ActionController::TestCase
  setup do
    @blockssupervisor = blockssupervisors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blockssupervisors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blockssupervisor" do
    assert_difference('Blockssupervisor.count') do
      post :create, blockssupervisor: { block_id: @blockssupervisor.block_id, idtecsem: @blockssupervisor.idtecsem, supervisor_id: @blockssupervisor.supervisor_id }
    end

    assert_redirected_to blockssupervisor_path(assigns(:blockssupervisor))
  end

  test "should show blockssupervisor" do
    get :show, id: @blockssupervisor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blockssupervisor
    assert_response :success
  end

  test "should update blockssupervisor" do
    patch :update, id: @blockssupervisor, blockssupervisor: { block_id: @blockssupervisor.block_id, idtecsem: @blockssupervisor.idtecsem, supervisor_id: @blockssupervisor.supervisor_id }
    assert_redirected_to blockssupervisor_path(assigns(:blockssupervisor))
  end

  test "should destroy blockssupervisor" do
    assert_difference('Blockssupervisor.count', -1) do
      delete :destroy, id: @blockssupervisor
    end

    assert_redirected_to blockssupervisors_path
  end
end
