json.extract! series, :id, :title, :description, :image_url, :ranking, :category, :created_at, :updated_at
json.url series_url(series, format: :json)
