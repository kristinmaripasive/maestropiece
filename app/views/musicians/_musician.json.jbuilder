json.extract! musician, :id, :name, :description, :photo_url, :created_at, :updated_at
json.url musician_url(musician, format: :json)