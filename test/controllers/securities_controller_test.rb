require 'test_helper'

class SecuritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security = securities(:one)
  end

  test "should get index" do
    get securities_url
    assert_response :success
  end

  test "should get new" do
    get new_security_url
    assert_response :success
  end

  test "should create security" do
    assert_difference('Security.count') do
      post securities_url, params: { security: { date_add: @security.date_add, date_remove: @security.date_remove, ncic_num: @security.ncic_num, oca: @security.oca, officer_name: @security.officer_name, operator_name: @security.operator_name, owner_name: @security.owner_name, owner_phone: @security.owner_phone, remove_by: @security.remove_by, serial: @security.serial } }
    end

    assert_redirected_to security_url(Security.last)
  end

  test "should show security" do
    get security_url(@security)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_url(@security)
    assert_response :success
  end

  test "should update security" do
    patch security_url(@security), params: { security: { date_add: @security.date_add, date_remove: @security.date_remove, ncic_num: @security.ncic_num, oca: @security.oca, officer_name: @security.officer_name, operator_name: @security.operator_name, owner_name: @security.owner_name, owner_phone: @security.owner_phone, remove_by: @security.remove_by, serial: @security.serial } }
    assert_redirected_to security_url(@security)
  end

  test "should destroy security" do
    assert_difference('Security.count', -1) do
      delete security_url(@security)
    end

    assert_redirected_to securities_url
  end
end
