json.extract! product, :id, :name, :content, :price, :loai, :created_at, :updated_at
json.url product_url(product, format: :json)
