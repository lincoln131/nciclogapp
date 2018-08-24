require 'test_helper'

class ParkingCitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_citation = parking_citations(:one)
  end

  test "should get index" do
    get parking_citations_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_citation_url
    assert_response :success
  end

  test "should create parking_citation" do
    assert_difference('ParkingCitation.count') do
      post parking_citations_url, params: { parking_citation: { book_num: @parking_citation.book_num, empty: @parking_citation.empty, end_c_num: @parking_citation.end_c_num, issue_by: @parking_citation.issue_by, issue_date: @parking_citation.issue_date, issued_to: @parking_citation.issued_to, return_by: @parking_citation.return_by, return_date: @parking_citation.return_date, start_c_num: @parking_citation.start_c_num } }
    end

    assert_redirected_to parking_citation_url(ParkingCitation.last)
  end

  test "should show parking_citation" do
    get parking_citation_url(@parking_citation)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_citation_url(@parking_citation)
    assert_response :success
  end

  test "should update parking_citation" do
    patch parking_citation_url(@parking_citation), params: { parking_citation: { book_num: @parking_citation.book_num, empty: @parking_citation.empty, end_c_num: @parking_citation.end_c_num, issue_by: @parking_citation.issue_by, issue_date: @parking_citation.issue_date, issued_to: @parking_citation.issued_to, return_by: @parking_citation.return_by, return_date: @parking_citation.return_date, start_c_num: @parking_citation.start_c_num } }
    assert_redirected_to parking_citation_url(@parking_citation)
  end

  test "should destroy parking_citation" do
    assert_difference('ParkingCitation.count', -1) do
      delete parking_citation_url(@parking_citation)
    end

    assert_redirected_to parking_citations_url
  end
end
