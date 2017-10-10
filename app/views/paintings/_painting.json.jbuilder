json.extract! painting, :id, :title, :artist, :height_cm, :width_cm, :year, :created_at, :updated_at
json.url painting_url(painting, format: :json)
