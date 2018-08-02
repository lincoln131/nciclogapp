json.extract! stolen_vehicle, :id, :oca, :operator_name, :officer_name, :ncic_num, :year, :make, :model, :vin, :license_plate, :color, :owner_name, :owner_phone, :date_add, :date_remove, :remove_by, :created_at, :updated_at
json.url stolen_vehicle_url(stolen_vehicle, format: :json)
