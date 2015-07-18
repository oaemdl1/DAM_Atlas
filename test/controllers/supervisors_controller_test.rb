require 'test_helper'

class SupervisorsControllerTest < ActionController::TestCase
  setup do
    @supervisor = supervisors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supervisors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supervisor" do
    assert_difference('Supervisor.count') do
      post :create, supervisor: { apellidomaterno: @supervisor.apellidomaterno, apellidopaterno: @supervisor.apellidopaterno, company_id: @supervisor.company_id, correopersonal: @supervisor.correopersonal, dni: @supervisor.dni, eliminado: @supervisor.eliminado, nombrep: @supervisor.nombrep, nombres: @supervisor.nombres, telefonos: @supervisor.telefonos }
    end

    assert_redirected_to supervisor_path(assigns(:supervisor))
  end

  test "should show supervisor" do
    get :show, id: @supervisor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supervisor
    assert_response :success
  end

  test "should update supervisor" do
    patch :update, id: @supervisor, supervisor: { apellidomaterno: @supervisor.apellidomaterno, apellidopaterno: @supervisor.apellidopaterno, company_id: @supervisor.company_id, correopersonal: @supervisor.correopersonal, dni: @supervisor.dni, eliminado: @supervisor.eliminado, nombrep: @supervisor.nombrep, nombres: @supervisor.nombres, telefonos: @supervisor.telefonos }
    assert_redirected_to supervisor_path(assigns(:supervisor))
  end

  test "should destroy supervisor" do
    assert_difference('Supervisor.count', -1) do
      delete :destroy, id: @supervisor
    end

    assert_redirected_to supervisors_path
  end
end
