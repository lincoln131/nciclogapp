require 'test_helper'

class VehicleBoatPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_boat_part = vehicle_boat_parts(:one)
  end

  test "should get index" do
    get vehicle_boat_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_boat_part_url
    assert_response :success
  end

  test "should create vehicle_boat_part" do
    assert_difference('VehicleBoatPart.count') do
      post vehicle_boat_parts_url, params: { vehicle_boat_part: { date_add: @vehicle_boat_part.date_add, date_remove: @vehicle_boat_part.date_remove, description: @vehicle_boat_part.description, ncic_num: @vehicle_boat_part.ncic_num, oca: @vehicle_boat_part.oca, officer_name: @vehicle_boat_part.officer_name, operator_name: @vehicle_boat_part.operator_name, owner_name: @vehicle_boat_part.owner_name, owner_phone: @vehicle_boat_part.owner_phone, remove_by: @vehicle_boat_part.remove_by } }
    end

    assert_redirected_to vehicle_boat_part_url(VehicleBoatPart.last)
  end

  test "should show vehicle_boat_part" do
    get vehicle_boat_part_url(@vehicle_boat_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_boat_part_url(@vehicle_boat_part)
    assert_response :success
  end

  test "should update vehicle_boat_part" do
    patch vehicle_boat_part_url(@vehicle_boat_part), params: { vehicle_boat_part: { date_add: @vehicle_boat_part.date_add, date_remove: @vehicle_boat_part.date_remove, description: @vehicle_boat_part.description, ncic_num: @vehicle_boat_part.ncic_num, oca: @vehicle_boat_part.oca, officer_name: @vehicle_boat_part.officer_name, operator_name: @vehicle_boat_part.operator_name, owner_name: @vehicle_boat_part.owner_name, owner_phone: @vehicle_boat_part.owner_phone, remove_by: @vehicle_boat_part.remove_by } }
    assert_redirected_to vehicle_boat_part_url(@vehicle_boat_part)
  end

  test "should destroy vehicle_boat_part" do
    assert_difference('VehicleBoatPart.count', -1) do
      delete vehicle_boat_part_url(@vehicle_boat_part)
    end

    assert_redirected_to vehicle_boat_parts_url
  end
end
