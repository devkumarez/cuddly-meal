json.extract! plan, :id, :name, :total_credit, :total_price, :status, :created_at, :updated_at
json.url v1_plan_url(plan, format: :json)
