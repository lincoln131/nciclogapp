json.extract! recovered_gun, :id, :oca, :operator_name, :officer_name, :ncic_num, :make, :model, :caliber, :serial, :owner_name, :owner_phone, :notes, :date_add, :date_remove, :remove_by, :created_at, :updated_at
json.url recovered_gun_url(recovered_gun, format: :json)
