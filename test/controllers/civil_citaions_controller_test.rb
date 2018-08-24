require 'test_helper'

class CivilCitaionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civil_citaion = civil_citaions(:one)
  end

  test "should get index" do
    get civil_citaions_url
    assert_response :success
  end

  test "should get new" do
    get new_civil_citaion_url
    assert_response :success
  end

  test "should create civil_citaion" do
    assert_difference('CivilCitaion.count') do
      post civil_citaions_url, params: { civil_citaion: { book_num: @civil_citaion.book_num, empty: @civil_citaion.empty, end_c_num: @civil_citaion.end_c_num, issue_by: @civil_citaion.issue_by, issue_date: @civil_citaion.issue_date, issued_to: @civil_citaion.issued_to, return_by: @civil_citaion.return_by, return_date: @civil_citaion.return_date, start_c_num: @civil_citaion.start_c_num } }
    end

    assert_redirected_to civil_citaion_url(CivilCitaion.last)
  end

  test "should show civil_citaion" do
    get civil_citaion_url(@civil_citaion)
    assert_response :success
  end

  test "should get edit" do
    get edit_civil_citaion_url(@civil_citaion)
    assert_response :success
  end

  test "should update civil_citaion" do
    patch civil_citaion_url(@civil_citaion), params: { civil_citaion: { book_num: @civil_citaion.book_num, empty: @civil_citaion.empty, end_c_num: @civil_citaion.end_c_num, issue_by: @civil_citaion.issue_by, issue_date: @civil_citaion.issue_date, issued_to: @civil_citaion.issued_to, return_by: @civil_citaion.return_by, return_date: @civil_citaion.return_date, start_c_num: @civil_citaion.start_c_num } }
    assert_redirected_to civil_citaion_url(@civil_citaion)
  end

  test "should destroy civil_citaion" do
    assert_difference('CivilCitaion.count', -1) do
      delete civil_citaion_url(@civil_citaion)
    end

    assert_redirected_to civil_citaions_url
  end
end
