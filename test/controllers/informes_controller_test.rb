require 'test_helper'

class InformesControllerTest < ActionController::TestCase
  setup do
    @informe = informes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informe" do
    assert_difference('Informe.count') do
      post :create, informe: { aspectos_estudiante: @informe.aspectos_estudiante, aspectos_monitor: @informe.aspectos_monitor, company_id: @informe.company_id, fecha_visita: @informe.fecha_visita, jefe: @informe.jefe, problemas_estudiante: @informe.problemas_estudiante, problemas_monitor: @informe.problemas_monitor, problemas_puesto: @informe.problemas_puesto, problemas_seguridad: @informe.problemas_seguridad, soluciones_estudiante: @informe.soluciones_estudiante, soluciones_monitor: @informe.soluciones_monitor, soluciones_puesto: @informe.soluciones_puesto, soluciones_seguridad: @informe.soluciones_seguridad, student_id: @informe.student_id, supervisor_id: @informe.supervisor_id }
    end

    assert_redirected_to informe_path(assigns(:informe))
  end

  test "should show informe" do
    get :show, id: @informe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informe
    assert_response :success
  end

  test "should update informe" do
    patch :update, id: @informe, informe: { aspectos_estudiante: @informe.aspectos_estudiante, aspectos_monitor: @informe.aspectos_monitor, company_id: @informe.company_id, fecha_visita: @informe.fecha_visita, jefe: @informe.jefe, problemas_estudiante: @informe.problemas_estudiante, problemas_monitor: @informe.problemas_monitor, problemas_puesto: @informe.problemas_puesto, problemas_seguridad: @informe.problemas_seguridad, soluciones_estudiante: @informe.soluciones_estudiante, soluciones_monitor: @informe.soluciones_monitor, soluciones_puesto: @informe.soluciones_puesto, soluciones_seguridad: @informe.soluciones_seguridad, student_id: @informe.student_id, supervisor_id: @informe.supervisor_id }
    assert_redirected_to informe_path(assigns(:informe))
  end

  test "should destroy informe" do
    assert_difference('Informe.count', -1) do
      delete :destroy, id: @informe
    end

    assert_redirected_to informes_path
  end
end
