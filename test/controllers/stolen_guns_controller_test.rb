require 'test_helper'

class StolenGunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stolen_gun = stolen_guns(:one)
  end

  test "should get index" do
    get stolen_guns_url
    assert_response :success
  end

  test "should get new" do
    get new_stolen_gun_url
    assert_response :success
  end

  test "should create stolen_gun" do
    assert_difference('StolenGun.count') do
      post stolen_guns_url, params: { stolen_gun: { caliber: @stolen_gun.caliber, date_add: @stolen_gun.date_add, date_remove: @stolen_gun.date_remove, make: @stolen_gun.make, model: @stolen_gun.model, ncic_num: @stolen_gun.ncic_num, notes: @stolen_gun.notes, oca: @stolen_gun.oca, officer_name: @stolen_gun.officer_name, operator_name: @stolen_gun.operator_name, owner_name: @stolen_gun.owner_name, owner_phone: @stolen_gun.owner_phone, remove_by: @stolen_gun.remove_by, serial: @stolen_gun.serial } }
    end

    assert_redirected_to stolen_gun_url(StolenGun.last)
  end

  test "should show stolen_gun" do
    get stolen_gun_url(@stolen_gun)
    assert_response :success
  end

  test "should get edit" do
    get edit_stolen_gun_url(@stolen_gun)
    assert_response :success
  end

  test "should update stolen_gun" do
    patch stolen_gun_url(@stolen_gun), params: { stolen_gun: { caliber: @stolen_gun.caliber, date_add: @stolen_gun.date_add, date_remove: @stolen_gun.date_remove, make: @stolen_gun.make, model: @stolen_gun.model, ncic_num: @stolen_gun.ncic_num, notes: @stolen_gun.notes, oca: @stolen_gun.oca, officer_name: @stolen_gun.officer_name, operator_name: @stolen_gun.operator_name, owner_name: @stolen_gun.owner_name, owner_phone: @stolen_gun.owner_phone, remove_by: @stolen_gun.remove_by, serial: @stolen_gun.serial } }
    assert_redirected_to stolen_gun_url(@stolen_gun)
  end

  test "should destroy stolen_gun" do
    assert_difference('StolenGun.count', -1) do
      delete stolen_gun_url(@stolen_gun)
    end

    assert_redirected_to stolen_guns_url
  end
end
