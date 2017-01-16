json.extract! user_ad, :id, :name, :email, :created_at, :updated_at
json.url user_ad_url(user_ad, format: :json)