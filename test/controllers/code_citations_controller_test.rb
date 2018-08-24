require 'test_helper'

class CodeCitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_citation = code_citations(:one)
  end

  test "should get index" do
    get code_citations_url
    assert_response :success
  end

  test "should get new" do
    get new_code_citation_url
    assert_response :success
  end

  test "should create code_citation" do
    assert_difference('CodeCitation.count') do
      post code_citations_url, params: { code_citation: { book_num: @code_citation.book_num, empty: @code_citation.empty, end_c_num: @code_citation.end_c_num, issue_by: @code_citation.issue_by, issue_date: @code_citation.issue_date, issued_to: @code_citation.issued_to, return_by: @code_citation.return_by, return_date: @code_citation.return_date, start_c_num: @code_citation.start_c_num } }
    end

    assert_redirected_to code_citation_url(CodeCitation.last)
  end

  test "should show code_citation" do
    get code_citation_url(@code_citation)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_citation_url(@code_citation)
    assert_response :success
  end

  test "should update code_citation" do
    patch code_citation_url(@code_citation), params: { code_citation: { book_num: @code_citation.book_num, empty: @code_citation.empty, end_c_num: @code_citation.end_c_num, issue_by: @code_citation.issue_by, issue_date: @code_citation.issue_date, issued_to: @code_citation.issued_to, return_by: @code_citation.return_by, return_date: @code_citation.return_date, start_c_num: @code_citation.start_c_num } }
    assert_redirected_to code_citation_url(@code_citation)
  end

  test "should destroy code_citation" do
    assert_difference('CodeCitation.count', -1) do
      delete code_citation_url(@code_citation)
    end

    assert_redirected_to code_citations_url
  end
end
