json.array!(@sites) do |site|
  json.extract! site, :category, :title, :description, :link
  json.url site_url(site, format: :json)
end
