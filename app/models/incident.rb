class Incident < ApplicationRecord

    before_validation :date_format_dash_to_slash
 
    private
        def date_format_dash_to_slash
            date.gsub!(/-/,"/") if date.include? "-"
        end

    validates :date,:coworker,:description, presence: true
    validates :date, format: {with: /(\A([0-9]{1}[0-9]{1}-{1}[0]{1}[0-6]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})\z)|(\A\z)/, message:" - MM/DD/YYYY"}


end
