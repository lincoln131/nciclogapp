json.extract! state_citation, :id, :book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, :return_date, :return_by, :empty, :created_at, :updated_at
json.url state_citation_url(state_citation, format: :json)
