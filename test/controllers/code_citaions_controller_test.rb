require 'test_helper'

class CodeCitaionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_citaion = code_citaions(:one)
  end

  test "should get index" do
    get code_citaions_url
    assert_response :success
  end

  test "should get new" do
    get new_code_citaion_url
    assert_response :success
  end

  test "should create code_citaion" do
    assert_difference('CodeCitaion.count') do
      post code_citaions_url, params: { code_citaion: { book_num: @code_citaion.book_num, empty: @code_citaion.empty, end_c_num: @code_citaion.end_c_num, issue_by: @code_citaion.issue_by, issue_date: @code_citaion.issue_date, issued_to: @code_citaion.issued_to, return_by: @code_citaion.return_by, return_date: @code_citaion.return_date, start_c_num: @code_citaion.start_c_num } }
    end

    assert_redirected_to code_citaion_url(CodeCitaion.last)
  end

  test "should show code_citaion" do
    get code_citaion_url(@code_citaion)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_citaion_url(@code_citaion)
    assert_response :success
  end

  test "should update code_citaion" do
    patch code_citaion_url(@code_citaion), params: { code_citaion: { book_num: @code_citaion.book_num, empty: @code_citaion.empty, end_c_num: @code_citaion.end_c_num, issue_by: @code_citaion.issue_by, issue_date: @code_citaion.issue_date, issued_to: @code_citaion.issued_to, return_by: @code_citaion.return_by, return_date: @code_citaion.return_date, start_c_num: @code_citaion.start_c_num } }
    assert_redirected_to code_citaion_url(@code_citaion)
  end

  test "should destroy code_citaion" do
    assert_difference('CodeCitaion.count', -1) do
      delete code_citaion_url(@code_citaion)
    end

    assert_redirected_to code_citaions_url
  end
end
