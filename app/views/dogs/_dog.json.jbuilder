json.extract! dog, :id, :name, :breed, :age, :price, :description, :image_url, :created_at, :updated_at
json.url dog_url(dog, format: :json)
