require 'test_helper'

class RecoveredGunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recovered_gun = recovered_guns(:one)
  end

  test "should get index" do
    get recovered_guns_url
    assert_response :success
  end

  test "should get new" do
    get new_recovered_gun_url
    assert_response :success
  end

  test "should create recovered_gun" do
    assert_difference('RecoveredGun.count') do
      post recovered_guns_url, params: { recovered_gun: { caliber: @recovered_gun.caliber, date_add: @recovered_gun.date_add, date_remove: @recovered_gun.date_remove, make: @recovered_gun.make, model: @recovered_gun.model, ncic_num: @recovered_gun.ncic_num, notes: @recovered_gun.notes, oca: @recovered_gun.oca, officer_name: @recovered_gun.officer_name, operator_name: @recovered_gun.operator_name, owner_name: @recovered_gun.owner_name, owner_phone: @recovered_gun.owner_phone, remove_by: @recovered_gun.remove_by, serial: @recovered_gun.serial } }
    end

    assert_redirected_to recovered_gun_url(RecoveredGun.last)
  end

  test "should show recovered_gun" do
    get recovered_gun_url(@recovered_gun)
    assert_response :success
  end

  test "should get edit" do
    get edit_recovered_gun_url(@recovered_gun)
    assert_response :success
  end

  test "should update recovered_gun" do
    patch recovered_gun_url(@recovered_gun), params: { recovered_gun: { caliber: @recovered_gun.caliber, date_add: @recovered_gun.date_add, date_remove: @recovered_gun.date_remove, make: @recovered_gun.make, model: @recovered_gun.model, ncic_num: @recovered_gun.ncic_num, notes: @recovered_gun.notes, oca: @recovered_gun.oca, officer_name: @recovered_gun.officer_name, operator_name: @recovered_gun.operator_name, owner_name: @recovered_gun.owner_name, owner_phone: @recovered_gun.owner_phone, remove_by: @recovered_gun.remove_by, serial: @recovered_gun.serial } }
    assert_redirected_to recovered_gun_url(@recovered_gun)
  end

  test "should destroy recovered_gun" do
    assert_difference('RecoveredGun.count', -1) do
      delete recovered_gun_url(@recovered_gun)
    end

    assert_redirected_to recovered_guns_url
  end
end
