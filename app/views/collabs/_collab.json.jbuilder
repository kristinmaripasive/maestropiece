json.extract! collab, :id, :title, :description, :photo_url, :created_at, :updated_at
json.url collab_url(collab, format: :json)