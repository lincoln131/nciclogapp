require 'test_helper'

class MissingPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missing_person = missing_people(:one)
  end

  test "should get index" do
    get missing_people_url
    assert_response :success
  end

  test "should get new" do
    get new_missing_person_url
    assert_response :success
  end

  test "should create missing_person" do
    assert_difference('MissingPerson.count') do
      post missing_people_url, params: { missing_person: { date_add: @missing_person.date_add, date_remove: @missing_person.date_remove, missing_dob: @missing_person.missing_dob, missing_f_name: @missing_person.missing_f_name, missing_l_name: @missing_person.missing_l_name, missing_race: @missing_person.missing_race, missing_sex: @missing_person.missing_sex, ncic_num: @missing_person.ncic_num, oca: @missing_person.oca, officer_name: @missing_person.officer_name, operator_name: @missing_person.operator_name, owner_name: @missing_person.owner_name, owner_phone: @missing_person.owner_phone, remove_by: @missing_person.remove_by } }
    end

    assert_redirected_to missing_person_url(MissingPerson.last)
  end

  test "should show missing_person" do
    get missing_person_url(@missing_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_missing_person_url(@missing_person)
    assert_response :success
  end

  test "should update missing_person" do
    patch missing_person_url(@missing_person), params: { missing_person: { date_add: @missing_person.date_add, date_remove: @missing_person.date_remove, missing_dob: @missing_person.missing_dob, missing_f_name: @missing_person.missing_f_name, missing_l_name: @missing_person.missing_l_name, missing_race: @missing_person.missing_race, missing_sex: @missing_person.missing_sex, ncic_num: @missing_person.ncic_num, oca: @missing_person.oca, officer_name: @missing_person.officer_name, operator_name: @missing_person.operator_name, owner_name: @missing_person.owner_name, owner_phone: @missing_person.owner_phone, remove_by: @missing_person.remove_by } }
    assert_redirected_to missing_person_url(@missing_person)
  end

  test "should destroy missing_person" do
    assert_difference('MissingPerson.count', -1) do
      delete missing_person_url(@missing_person)
    end

    assert_redirected_to missing_people_url
  end
end
