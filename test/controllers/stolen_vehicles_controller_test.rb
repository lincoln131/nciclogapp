require 'test_helper'

class StolenVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stolen_vehicle = stolen_vehicles(:one)
  end

  test "should get index" do
    get stolen_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_stolen_vehicle_url
    assert_response :success
  end

  test "should create stolen_vehicle" do
    assert_difference('StolenVehicle.count') do
      post stolen_vehicles_url, params: { stolen_vehicle: { color: @stolen_vehicle.color, date_add: @stolen_vehicle.date_add, date_remove: @stolen_vehicle.date_remove, license_plate: @stolen_vehicle.license_plate, make: @stolen_vehicle.make, model: @stolen_vehicle.model, ncic_num: @stolen_vehicle.ncic_num, oca: @stolen_vehicle.oca, officer_name: @stolen_vehicle.officer_name, operator_name: @stolen_vehicle.operator_name, owner_name: @stolen_vehicle.owner_name, owner_phone: @stolen_vehicle.owner_phone, remove_by: @stolen_vehicle.remove_by, vin: @stolen_vehicle.vin, year: @stolen_vehicle.year } }
    end

    assert_redirected_to stolen_vehicle_url(StolenVehicle.last)
  end

  test "should show stolen_vehicle" do
    get stolen_vehicle_url(@stolen_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_stolen_vehicle_url(@stolen_vehicle)
    assert_response :success
  end

  test "should update stolen_vehicle" do
    patch stolen_vehicle_url(@stolen_vehicle), params: { stolen_vehicle: { color: @stolen_vehicle.color, date_add: @stolen_vehicle.date_add, date_remove: @stolen_vehicle.date_remove, license_plate: @stolen_vehicle.license_plate, make: @stolen_vehicle.make, model: @stolen_vehicle.model, ncic_num: @stolen_vehicle.ncic_num, oca: @stolen_vehicle.oca, officer_name: @stolen_vehicle.officer_name, operator_name: @stolen_vehicle.operator_name, owner_name: @stolen_vehicle.owner_name, owner_phone: @stolen_vehicle.owner_phone, remove_by: @stolen_vehicle.remove_by, vin: @stolen_vehicle.vin, year: @stolen_vehicle.year } }
    assert_redirected_to stolen_vehicle_url(@stolen_vehicle)
  end

  test "should destroy stolen_vehicle" do
    assert_difference('StolenVehicle.count', -1) do
      delete stolen_vehicle_url(@stolen_vehicle)
    end

    assert_redirected_to stolen_vehicles_url
  end
end
