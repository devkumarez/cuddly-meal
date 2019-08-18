json.extract! address, :id, :street, :city, :state, :country, :landmark, :zip, :user_id, :created_at, :updated_at
json.url v1_address_url(address, format: :json)
