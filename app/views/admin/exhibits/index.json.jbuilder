json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :title, :description, :body
  json.url exhibit_url(exhibit, format: :json)
end
