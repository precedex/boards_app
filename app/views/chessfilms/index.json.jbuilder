json.array!(@chessfilms) do |chessfilm|
  json.extract! chessfilm, :title, :year, :time, :director, :image, :description, :imdb_link, :trailer_link, :full_link
  json.url chessfilm_url(chessfilm, format: :json)
end
