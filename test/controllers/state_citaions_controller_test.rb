require 'test_helper'

class StateCitaionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_citaion = state_citaions(:one)
  end

  test "should get index" do
    get state_citaions_url
    assert_response :success
  end

  test "should get new" do
    get new_state_citaion_url
    assert_response :success
  end

  test "should create state_citaion" do
    assert_difference('StateCitaion.count') do
      post state_citaions_url, params: { state_citaion: { book_num: @state_citaion.book_num, empty: @state_citaion.empty, end_c_num: @state_citaion.end_c_num, issue_by: @state_citaion.issue_by, issue_date: @state_citaion.issue_date, issued_to: @state_citaion.issued_to, return_by: @state_citaion.return_by, return_date: @state_citaion.return_date, start_c_num: @state_citaion.start_c_num } }
    end

    assert_redirected_to state_citaion_url(StateCitaion.last)
  end

  test "should show state_citaion" do
    get state_citaion_url(@state_citaion)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_citaion_url(@state_citaion)
    assert_response :success
  end

  test "should update state_citaion" do
    patch state_citaion_url(@state_citaion), params: { state_citaion: { book_num: @state_citaion.book_num, empty: @state_citaion.empty, end_c_num: @state_citaion.end_c_num, issue_by: @state_citaion.issue_by, issue_date: @state_citaion.issue_date, issued_to: @state_citaion.issued_to, return_by: @state_citaion.return_by, return_date: @state_citaion.return_date, start_c_num: @state_citaion.start_c_num } }
    assert_redirected_to state_citaion_url(@state_citaion)
  end

  test "should destroy state_citaion" do
    assert_difference('StateCitaion.count', -1) do
      delete state_citaion_url(@state_citaion)
    end

    assert_redirected_to state_citaions_url
  end
end
