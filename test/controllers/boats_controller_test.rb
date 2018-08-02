require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boat = boats(:one)
  end

  test "should get index" do
    get boats_url
    assert_response :success
  end

  test "should get new" do
    get new_boat_url
    assert_response :success
  end

  test "should create boat" do
    assert_difference('Boat.count') do
      post boats_url, params: { boat: { date_add: @boat.date_add, date_remove: @boat.date_remove, description: @boat.description, ncic_num: @boat.ncic_num, oca: @boat.oca, officer_name: @boat.officer_name, operator_name: @boat.operator_name, owner_name: @boat.owner_name, owner_phone: @boat.owner_phone, remove_by: @boat.remove_by } }
    end

    assert_redirected_to boat_url(Boat.last)
  end

  test "should show boat" do
    get boat_url(@boat)
    assert_response :success
  end

  test "should get edit" do
    get edit_boat_url(@boat)
    assert_response :success
  end

  test "should update boat" do
    patch boat_url(@boat), params: { boat: { date_add: @boat.date_add, date_remove: @boat.date_remove, description: @boat.description, ncic_num: @boat.ncic_num, oca: @boat.oca, officer_name: @boat.officer_name, operator_name: @boat.operator_name, owner_name: @boat.owner_name, owner_phone: @boat.owner_phone, remove_by: @boat.remove_by } }
    assert_redirected_to boat_url(@boat)
  end

  test "should destroy boat" do
    assert_difference('Boat.count', -1) do
      delete boat_url(@boat)
    end

    assert_redirected_to boats_url
  end
end
