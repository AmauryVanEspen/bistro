json.extract! item, :id, :name, :description, :price, :quantity, :image, :created_at, :updated_at
json.url item_url(item, format: :json)