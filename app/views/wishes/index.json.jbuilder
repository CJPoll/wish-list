json.array!(@wishes) do |wish|
  json.extract! wish, :id, :name, :description, :url
  json.url wish_url(wish, format: :json)
end
