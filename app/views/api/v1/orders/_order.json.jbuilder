json.extract! order, :id, :user_id, :address_id, :menu_id, :delivery_status, :total_credit, :created_at, :updated_at
json.url v1_order_url(order, format: :json)
