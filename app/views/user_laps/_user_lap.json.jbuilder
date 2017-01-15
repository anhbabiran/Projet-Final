json.extract! user_lap, :id, :name, :email, :created_at, :updated_at
json.url user_lap_url(user_lap, format: :json)