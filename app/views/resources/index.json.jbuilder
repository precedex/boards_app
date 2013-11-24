json.array!(@resources) do |resource|
  json.extract! resource, :name, :authors, :image_url, :link
  json.url resource_url(resource, format: :json)
end
