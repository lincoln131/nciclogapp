class Security < ApplicationRecord
    validates :oca, :operator_name, :officer_name, :ncic_num, :serial, :owner_name, :owner_phone, :date_add, presence: true

    before_validation :ensure_date_formatted_properly
 
    private
      def ensure_date_formatted_properly
          date_add.gsub!(/-/,"/") if date_add.include? "-"
          date_remove.gsub!(/-/,"/") if date_remove.include? "-"
      end
      
    validates :oca, format: {with: /(\A([0-9]{1}[0-9]{1}-{1}[0]{1}[01]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})\z)|(\A\z)/, message:" - YY-NNNNNN"}
    validates :owner_phone, format: {with: /(\A[2-9]\d{2}-\d{3}-\d{4}\z)|(\A\z)/,message:" - XXX-XXX-XXXX"}
    validates :date_add, format: {with: /(\A(1[0-2]|0[1-9]|[1-9])\/(1[0-9]|2[0-9]|3[0-1]|0[1-9]|[1-9])\/\d{4}\z)|(\A\z)/, message:" - MM/DD/YYYY"}
    validates :date_remove, format: {with: /(\A(1[0-2]|0[1-9]|[1-9])\/(1[0-9]|2[0-9]|3[0-1]|0[1-9]|[1-9])\/\d{4}\z)|(\A\z)/, message:" - MM/DD/YYYY"}
end
