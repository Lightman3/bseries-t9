json.extract! tv_show, :id, :category, :description, :image_url, :ranking, :title, :created_at, :updated_at
json.url tv_show_url(tv_show, format: :json)
