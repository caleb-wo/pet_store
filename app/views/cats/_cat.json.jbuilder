json.extract! cat, :id, :name, :breed, :age, :price, :description, :image_url, :created_at, :updated_at
json.url cat_url(cat, format: :json)
