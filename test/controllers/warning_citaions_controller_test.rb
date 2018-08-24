require 'test_helper'

class WarningCitaionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warning_citaion = warning_citaions(:one)
  end

  test "should get index" do
    get warning_citaions_url
    assert_response :success
  end

  test "should get new" do
    get new_warning_citaion_url
    assert_response :success
  end

  test "should create warning_citaion" do
    assert_difference('WarningCitaion.count') do
      post warning_citaions_url, params: { warning_citaion: { book_num: @warning_citaion.book_num, empty: @warning_citaion.empty, end_c_num: @warning_citaion.end_c_num, issue_by: @warning_citaion.issue_by, issue_date: @warning_citaion.issue_date, issued_to: @warning_citaion.issued_to, return_by: @warning_citaion.return_by, return_date: @warning_citaion.return_date, start_c_num: @warning_citaion.start_c_num } }
    end

    assert_redirected_to warning_citaion_url(WarningCitaion.last)
  end

  test "should show warning_citaion" do
    get warning_citaion_url(@warning_citaion)
    assert_response :success
  end

  test "should get edit" do
    get edit_warning_citaion_url(@warning_citaion)
    assert_response :success
  end

  test "should update warning_citaion" do
    patch warning_citaion_url(@warning_citaion), params: { warning_citaion: { book_num: @warning_citaion.book_num, empty: @warning_citaion.empty, end_c_num: @warning_citaion.end_c_num, issue_by: @warning_citaion.issue_by, issue_date: @warning_citaion.issue_date, issued_to: @warning_citaion.issued_to, return_by: @warning_citaion.return_by, return_date: @warning_citaion.return_date, start_c_num: @warning_citaion.start_c_num } }
    assert_redirected_to warning_citaion_url(@warning_citaion)
  end

  test "should destroy warning_citaion" do
    assert_difference('WarningCitaion.count', -1) do
      delete warning_citaion_url(@warning_citaion)
    end

    assert_redirected_to warning_citaions_url
  end
end
