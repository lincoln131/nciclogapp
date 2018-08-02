require 'test_helper'

class WantedPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wanted_person = wanted_people(:one)
  end

  test "should get index" do
    get wanted_people_url
    assert_response :success
  end

  test "should get new" do
    get new_wanted_person_url
    assert_response :success
  end

  test "should create wanted_person" do
    assert_difference('WantedPerson.count') do
      post wanted_people_url, params: { wanted_person: { date_add: @wanted_person.date_add, date_remove: @wanted_person.date_remove, description: @wanted_person.description, ncic_num: @wanted_person.ncic_num, oca: @wanted_person.oca, officer_name: @wanted_person.officer_name, operator_name: @wanted_person.operator_name, owner_name: @wanted_person.owner_name, owner_phone: @wanted_person.owner_phone, remove_by: @wanted_person.remove_by } }
    end

    assert_redirected_to wanted_person_url(WantedPerson.last)
  end

  test "should show wanted_person" do
    get wanted_person_url(@wanted_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_wanted_person_url(@wanted_person)
    assert_response :success
  end

  test "should update wanted_person" do
    patch wanted_person_url(@wanted_person), params: { wanted_person: { date_add: @wanted_person.date_add, date_remove: @wanted_person.date_remove, description: @wanted_person.description, ncic_num: @wanted_person.ncic_num, oca: @wanted_person.oca, officer_name: @wanted_person.officer_name, operator_name: @wanted_person.operator_name, owner_name: @wanted_person.owner_name, owner_phone: @wanted_person.owner_phone, remove_by: @wanted_person.remove_by } }
    assert_redirected_to wanted_person_url(@wanted_person)
  end

  test "should destroy wanted_person" do
    assert_difference('WantedPerson.count', -1) do
      delete wanted_person_url(@wanted_person)
    end

    assert_redirected_to wanted_people_url
  end
end
