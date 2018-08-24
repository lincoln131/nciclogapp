require 'test_helper'

class ParkingCitaionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_citaion = parking_citaions(:one)
  end

  test "should get index" do
    get parking_citaions_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_citaion_url
    assert_response :success
  end

  test "should create parking_citaion" do
    assert_difference('ParkingCitaion.count') do
      post parking_citaions_url, params: { parking_citaion: { book_num: @parking_citaion.book_num, empty: @parking_citaion.empty, end_c_num: @parking_citaion.end_c_num, issue_by: @parking_citaion.issue_by, issue_date: @parking_citaion.issue_date, issued_to: @parking_citaion.issued_to, return_by: @parking_citaion.return_by, return_date: @parking_citaion.return_date, start_c_num: @parking_citaion.start_c_num } }
    end

    assert_redirected_to parking_citaion_url(ParkingCitaion.last)
  end

  test "should show parking_citaion" do
    get parking_citaion_url(@parking_citaion)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_citaion_url(@parking_citaion)
    assert_response :success
  end

  test "should update parking_citaion" do
    patch parking_citaion_url(@parking_citaion), params: { parking_citaion: { book_num: @parking_citaion.book_num, empty: @parking_citaion.empty, end_c_num: @parking_citaion.end_c_num, issue_by: @parking_citaion.issue_by, issue_date: @parking_citaion.issue_date, issued_to: @parking_citaion.issued_to, return_by: @parking_citaion.return_by, return_date: @parking_citaion.return_date, start_c_num: @parking_citaion.start_c_num } }
    assert_redirected_to parking_citaion_url(@parking_citaion)
  end

  test "should destroy parking_citaion" do
    assert_difference('ParkingCitaion.count', -1) do
      delete parking_citaion_url(@parking_citaion)
    end

    assert_redirected_to parking_citaions_url
  end
end
