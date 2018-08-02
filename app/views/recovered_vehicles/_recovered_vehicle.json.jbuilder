json.extract! recovered_vehicle, :id, :oca, :operator_name, :officer_name, :year, :make, :model, :vin, :license_plate, :color, :wrecker, :date_add, :date_remove, :remove_by, :created_at, :updated_at
json.url recovered_vehicle_url(recovered_vehicle, format: :json)
