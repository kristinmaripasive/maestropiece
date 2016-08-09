json.extract! art, :id, :name, :description, :photo_url, :created_at, :updated_at
json.url art_url(art, format: :json)