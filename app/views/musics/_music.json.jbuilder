json.extract! music, :id, :name, :description, :photo_url, :created_at, :updated_at
json.url music_url(music, format: :json)