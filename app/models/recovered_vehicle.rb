class RecoveredVehicle < ApplicationRecord
    validates :oca, :operator_name, :officer_name, :ncic_num, :year, :make, :model, :vin, :license_plate, :color, :wrecker, :date_add, presence: true

    validates :oca, format: {with: /(\A([0-9]{1}[0-9]{1}-{1}[0]{1}[01]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1})\z)|(\A\z)/, message:" - YY-NNNNNN"}
    validates :date_add, format: {with: /(\A(1[0-2]|0[1-9]|[1-9])\/(1[0-9]|2[0-9]|3[0-1]|0[1-9]|[1-9])\/\d{4}\z)|(\A\z)/, message:" - MM/DD/YYYY"}
    validates :date_remove, format: {with: /(\A(1[0-2]|0[1-9]|[1-9])\/(1[0-9]|2[0-9]|3[0-1]|0[1-9]|[1-9])\/\d{4}\z)|(\A\z)/, message:" - MM/DD/YYYY"}
end
