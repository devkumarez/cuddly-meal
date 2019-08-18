json.extract! menu, :id, :name, :category, :food_type, :available, :items, :description, :price, :status, :created_at, :updated_at
json.url v1_menu_url(menu, format: :json)
