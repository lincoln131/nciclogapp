require 'test_helper'

class CivilCitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civil_citation = civil_citations(:one)
  end

  test "should get index" do
    get civil_citations_url
    assert_response :success
  end

  test "should get new" do
    get new_civil_citation_url
    assert_response :success
  end

  test "should create civil_citation" do
    assert_difference('CivilCitation.count') do
      post civil_citations_url, params: { civil_citation: { book_num: @civil_citation.book_num, empty: @civil_citation.empty, end_c_num: @civil_citation.end_c_num, issue_by: @civil_citation.issue_by, issue_date: @civil_citation.issue_date, issued_to: @civil_citation.issued_to, return_by: @civil_citation.return_by, return_date: @civil_citation.return_date, start_c_num: @civil_citation.start_c_num } }
    end

    assert_redirected_to civil_citation_url(CivilCitation.last)
  end

  test "should show civil_citation" do
    get civil_citation_url(@civil_citation)
    assert_response :success
  end

  test "should get edit" do
    get edit_civil_citation_url(@civil_citation)
    assert_response :success
  end

  test "should update civil_citation" do
    patch civil_citation_url(@civil_citation), params: { civil_citation: { book_num: @civil_citation.book_num, empty: @civil_citation.empty, end_c_num: @civil_citation.end_c_num, issue_by: @civil_citation.issue_by, issue_date: @civil_citation.issue_date, issued_to: @civil_citation.issued_to, return_by: @civil_citation.return_by, return_date: @civil_citation.return_date, start_c_num: @civil_citation.start_c_num } }
    assert_redirected_to civil_citation_url(@civil_citation)
  end

  test "should destroy civil_citation" do
    assert_difference('CivilCitation.count', -1) do
      delete civil_citation_url(@civil_citation)
    end

    assert_redirected_to civil_citations_url
  end
end
