json.extract! incident, :id, :date, :coworker, :description, :created_at, :updated_at
json.url incident_url(incident, format: :json)
