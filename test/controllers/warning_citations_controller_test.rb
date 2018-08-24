require 'test_helper'

class WarningCitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warning_citation = warning_citations(:one)
  end

  test "should get index" do
    get warning_citations_url
    assert_response :success
  end

  test "should get new" do
    get new_warning_citation_url
    assert_response :success
  end

  test "should create warning_citation" do
    assert_difference('WarningCitation.count') do
      post warning_citations_url, params: { warning_citation: { book_num: @warning_citation.book_num, empty: @warning_citation.empty, end_c_num: @warning_citation.end_c_num, issue_by: @warning_citation.issue_by, issue_date: @warning_citation.issue_date, issued_to: @warning_citation.issued_to, return_by: @warning_citation.return_by, return_date: @warning_citation.return_date, start_c_num: @warning_citation.start_c_num } }
    end

    assert_redirected_to warning_citation_url(WarningCitation.last)
  end

  test "should show warning_citation" do
    get warning_citation_url(@warning_citation)
    assert_response :success
  end

  test "should get edit" do
    get edit_warning_citation_url(@warning_citation)
    assert_response :success
  end

  test "should update warning_citation" do
    patch warning_citation_url(@warning_citation), params: { warning_citation: { book_num: @warning_citation.book_num, empty: @warning_citation.empty, end_c_num: @warning_citation.end_c_num, issue_by: @warning_citation.issue_by, issue_date: @warning_citation.issue_date, issued_to: @warning_citation.issued_to, return_by: @warning_citation.return_by, return_date: @warning_citation.return_date, start_c_num: @warning_citation.start_c_num } }
    assert_redirected_to warning_citation_url(@warning_citation)
  end

  test "should destroy warning_citation" do
    assert_difference('WarningCitation.count', -1) do
      delete warning_citation_url(@warning_citation)
    end

    assert_redirected_to warning_citations_url
  end
end
