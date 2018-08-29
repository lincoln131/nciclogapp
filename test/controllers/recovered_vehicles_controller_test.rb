require 'test_helper'

class RecoveredVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recovered_vehicle = recovered_vehicles(:one)
  end

  test "should get index" do
    get recovered_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_recovered_vehicle_url
    assert_response :success
  end

  test "should create recovered_vehicle" do
    assert_difference('RecoveredVehicle.count') do
      post recovered_vehicles_url, params: { recovered_vehicle: { color: @recovered_vehicle.color, date_add: @recovered_vehicle.date_add, date_remove: @recovered_vehicle.date_remove, license_plate: @recovered_vehicle.license_plate, make: @recovered_vehicle.make, model: @recovered_vehicle.model, ncic_num: @recovered_vehicle.ncic_num, oca: @recovered_vehicle.oca, officer_name: @recovered_vehicle.officer_name, operator_name: @recovered_vehicle.operator_name, remove_by: @recovered_vehicle.remove_by, vin: @recovered_vehicle.vin, wrecker: @recovered_vehicle.wrecker, year: @recovered_vehicle.year } }
    end

    assert_redirected_to recovered_vehicle_url(RecoveredVehicle.last)
  end

  test "should show recovered_vehicle" do
    get recovered_vehicle_url(@recovered_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_recovered_vehicle_url(@recovered_vehicle)
    assert_response :success
  end

  test "should update recovered_vehicle" do
    patch recovered_vehicle_url(@recovered_vehicle), params: { recovered_vehicle: { color: @recovered_vehicle.color, date_add: @recovered_vehicle.date_add, date_remove: @recovered_vehicle.date_remove, license_plate: @recovered_vehicle.license_plate, make: @recovered_vehicle.make, model: @recovered_vehicle.model, ncic_num: @recovered_vehicle.ncic_num, oca: @recovered_vehicle.oca, officer_name: @recovered_vehicle.officer_name, operator_name: @recovered_vehicle.operator_name, remove_by: @recovered_vehicle.remove_by, vin: @recovered_vehicle.vin, wrecker: @recovered_vehicle.wrecker, year: @recovered_vehicle.year } }
    assert_redirected_to recovered_vehicle_url(@recovered_vehicle)
  end

  test "should destroy recovered_vehicle" do
    assert_difference('RecoveredVehicle.count', -1) do
      delete recovered_vehicle_url(@recovered_vehicle)
    end

    assert_redirected_to recovered_vehicles_url
  end
end
