json.array!(@gift_ideas) do |gift_idea|
  json.extract! gift_idea, :id, :name, :description, :url
  json.url gift_idea_url(gift_idea, format: :json)
end
