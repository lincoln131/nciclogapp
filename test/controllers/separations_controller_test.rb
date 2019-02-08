require 'test_helper'

class SeparationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @separation = separations(:one)
  end

  test "should get index" do
    get separations_url
    assert_response :success
  end

  test "should get new" do
    get new_separation_url
    assert_response :success
  end

  test "should create separation" do
    assert_difference('Separation.count') do
      post separations_url, params: { separation: { accurint: @separation.accurint, ad: @separation.ad, cad_login: @separation.cad_login, callsign: @separation.callsign, cardkey: @separation.cardkey, cjleads: @separation.cjleads, dci: @separation.dci, edotcom: @separation.edotcom, email: @separation.email, leads: @separation.leads, lexipol: @separation.lexipol, linx: @separation.linx, ncaware: @separation.ncaware, officer: @separation.officer, pwgate: @separation.pwgate, rms_login: @separation.rms_login, rms_seperation: @separation.rms_seperation, switch: @separation.switch } }
    end

    assert_redirected_to separation_url(Separation.last)
  end

  test "should show separation" do
    get separation_url(@separation)
    assert_response :success
  end

  test "should get edit" do
    get edit_separation_url(@separation)
    assert_response :success
  end

  test "should update separation" do
    patch separation_url(@separation), params: { separation: { accurint: @separation.accurint, ad: @separation.ad, cad_login: @separation.cad_login, callsign: @separation.callsign, cardkey: @separation.cardkey, cjleads: @separation.cjleads, dci: @separation.dci, edotcom: @separation.edotcom, email: @separation.email, leads: @separation.leads, lexipol: @separation.lexipol, linx: @separation.linx, ncaware: @separation.ncaware, officer: @separation.officer, pwgate: @separation.pwgate, rms_login: @separation.rms_login, rms_seperation: @separation.rms_seperation, switch: @separation.switch } }
    assert_redirected_to separation_url(@separation)
  end

  test "should destroy separation" do
    assert_difference('Separation.count', -1) do
      delete separation_url(@separation)
    end

    assert_redirected_to separations_url
  end
end
