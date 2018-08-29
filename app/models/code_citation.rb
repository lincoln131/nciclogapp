class CodeCitation < ApplicationRecord
    validates :book_num, presence: true
    validates :issued_to, presence: true
    validates :start_c_num, presence: true
    validates :end_c_num, presence: true
    validates :issue_date, presence: true
    validates :issue_by, presence: true
end
