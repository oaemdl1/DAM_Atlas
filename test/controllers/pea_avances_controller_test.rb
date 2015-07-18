require 'test_helper'

class PeaAvancesControllerTest < ActionController::TestCase
  setup do
    @pea_avance = pea_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pea_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pea_avance" do
    assert_difference('PeaAvance.count') do
      post :create, pea_avance: { dominio: @pea_avance.dominio, oper_ejecutar: @pea_avance.oper_ejecutar, oper_seminario: @pea_avance.oper_seminario, pea_id: @pea_avance.pea_id }
    end

    assert_redirected_to pea_avance_path(assigns(:pea_avance))
  end

  test "should show pea_avance" do
    get :show, id: @pea_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pea_avance
    assert_response :success
  end

  test "should update pea_avance" do
    patch :update, id: @pea_avance, pea_avance: { dominio: @pea_avance.dominio, oper_ejecutar: @pea_avance.oper_ejecutar, oper_seminario: @pea_avance.oper_seminario, pea_id: @pea_avance.pea_id }
    assert_redirected_to pea_avance_path(assigns(:pea_avance))
  end

  test "should destroy pea_avance" do
    assert_difference('PeaAvance.count', -1) do
      delete :destroy, id: @pea_avance
    end

    assert_redirected_to pea_avances_path
  end
end
