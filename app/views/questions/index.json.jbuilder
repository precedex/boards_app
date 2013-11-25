json.array!(@questions) do |question|
  json.extract! question, :stem, :options, :answer, :topic
  json.url question_url(question, format: :json)
end
