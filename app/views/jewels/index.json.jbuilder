json.array!(@jewels) do |jewel|
  json.extract! jewel, 
  json.url jewel_url(jewel, format: :json)
end