json.extract! request, :id, :latitude, :longitude, :name, :address, :item, :created_at, :updated_at
json.url request_url(request, format: :json)