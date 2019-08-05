json.extract! menu, :id, :name, :category, :food_type, :available, :items, :description, :price, :status, :created_at, :updated_at
json.url menu_url(menu, format: :json)
