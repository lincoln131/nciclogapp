require 'test_helper'

class LicensePlatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @license_plate = license_plates(:one)
  end

  test "should get index" do
    get license_plates_url
    assert_response :success
  end

  test "should get new" do
    get new_license_plate_url
    assert_response :success
  end

  test "should create license_plate" do
    assert_difference('LicensePlate.count') do
      post license_plates_url, params: { license_plate: { date_add: @license_plate.date_add, date_remove: @license_plate.date_remove, license_plate: @license_plate.license_plate, ncic_num: @license_plate.ncic_num, oca: @license_plate.oca, officer_name: @license_plate.officer_name, operator_name: @license_plate.operator_name, owner_name: @license_plate.owner_name, owner_phone: @license_plate.owner_phone, remove_by: @license_plate.remove_by, state: @license_plate.state } }
    end

    assert_redirected_to license_plate_url(LicensePlate.last)
  end

  test "should show license_plate" do
    get license_plate_url(@license_plate)
    assert_response :success
  end

  test "should get edit" do
    get edit_license_plate_url(@license_plate)
    assert_response :success
  end

  test "should update license_plate" do
    patch license_plate_url(@license_plate), params: { license_plate: { date_add: @license_plate.date_add, date_remove: @license_plate.date_remove, license_plate: @license_plate.license_plate, ncic_num: @license_plate.ncic_num, oca: @license_plate.oca, officer_name: @license_plate.officer_name, operator_name: @license_plate.operator_name, owner_name: @license_plate.owner_name, owner_phone: @license_plate.owner_phone, remove_by: @license_plate.remove_by, state: @license_plate.state } }
    assert_redirected_to license_plate_url(@license_plate)
  end

  test "should destroy license_plate" do
    assert_difference('LicensePlate.count', -1) do
      delete license_plate_url(@license_plate)
    end

    assert_redirected_to license_plates_url
  end
end
