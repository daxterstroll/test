json.extract! gallery, :id, :name, :created_at, :gallery_images, :updated_at
json.url gallery_url(gallery, format: :json)
