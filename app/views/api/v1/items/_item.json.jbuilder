json.extract! item, :id, :name, :description, :created_at, :updated_at
json.url v1_item_url(item, format: :json)
