require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { correo: @company.correo, direccion: @company.direccion, district_id: @company.district_id, eliminado: @company.eliminado, linkgooglemaps: @company.linkgooglemaps, partidaregistral: @company.partidaregistral, razonsocial: @company.razonsocial, representantelegal: @company.representantelegal, ruc: @company.ruc, telefonofijo: @company.telefonofijo, telefonomovil: @company.telefonomovil }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { correo: @company.correo, direccion: @company.direccion, district_id: @company.district_id, eliminado: @company.eliminado, linkgooglemaps: @company.linkgooglemaps, partidaregistral: @company.partidaregistral, razonsocial: @company.razonsocial, representantelegal: @company.representantelegal, ruc: @company.ruc, telefonofijo: @company.telefonofijo, telefonomovil: @company.telefonomovil }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
