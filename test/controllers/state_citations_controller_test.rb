require 'test_helper'

class StateCitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_citation = state_citations(:one)
  end

  test "should get index" do
    get state_citations_url
    assert_response :success
  end

  test "should get new" do
    get new_state_citation_url
    assert_response :success
  end

  test "should create state_citation" do
    assert_difference('StateCitation.count') do
      post state_citations_url, params: { state_citation: { book_num: @state_citation.book_num, empty: @state_citation.empty, end_c_num: @state_citation.end_c_num, issue_by: @state_citation.issue_by, issue_date: @state_citation.issue_date, issued_to: @state_citation.issued_to, return_by: @state_citation.return_by, return_date: @state_citation.return_date, start_c_num: @state_citation.start_c_num } }
    end

    assert_redirected_to state_citation_url(StateCitation.last)
  end

  test "should show state_citation" do
    get state_citation_url(@state_citation)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_citation_url(@state_citation)
    assert_response :success
  end

  test "should update state_citation" do
    patch state_citation_url(@state_citation), params: { state_citation: { book_num: @state_citation.book_num, empty: @state_citation.empty, end_c_num: @state_citation.end_c_num, issue_by: @state_citation.issue_by, issue_date: @state_citation.issue_date, issued_to: @state_citation.issued_to, return_by: @state_citation.return_by, return_date: @state_citation.return_date, start_c_num: @state_citation.start_c_num } }
    assert_redirected_to state_citation_url(@state_citation)
  end

  test "should destroy state_citation" do
    assert_difference('StateCitation.count', -1) do
      delete state_citation_url(@state_citation)
    end

    assert_redirected_to state_citations_url
  end
end
