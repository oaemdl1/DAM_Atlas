require 'test_helper'

class PeasControllerTest < ActionController::TestCase
  setup do
    @pea = peas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pea" do
    assert_difference('Pea.count') do
      post :create, pea: { ciclo: @pea.ciclo, detalle: @pea.detalle, specialty_id: @pea.specialty_id }
    end

    assert_redirected_to pea_path(assigns(:pea))
  end

  test "should show pea" do
    get :show, id: @pea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pea
    assert_response :success
  end

  test "should update pea" do
    patch :update, id: @pea, pea: { ciclo: @pea.ciclo, detalle: @pea.detalle, specialty_id: @pea.specialty_id }
    assert_redirected_to pea_path(assigns(:pea))
  end

  test "should destroy pea" do
    assert_difference('Pea.count', -1) do
      delete :destroy, id: @pea
    end

    assert_redirected_to peas_path
  end
end
