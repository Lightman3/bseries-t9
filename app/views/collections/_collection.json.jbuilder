json.extract! collection, :id, :tv_show_id, :name, :image_url, :description, :price, :created_at, :updated_at
json.url collection_url(collection, format: :json)
