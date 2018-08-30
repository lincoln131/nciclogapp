class WarningCitation < ApplicationRecord
    validates :book_num, :issued_to, :start_c_num, :end_c_num, :issue_date, :issue_by, presence: true
end
