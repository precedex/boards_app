json.array!(@resources) do |resource|
  json.extract! resource, :title, :authors, :description, :image_url, :link
  json.url resource_url(resource, format: :json)
end
