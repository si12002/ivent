json.array!(@events) do |event|
  json.extract! event, :id, :title, :dtstart, :dtend, :location, :lat, :lng, :summary
  json.url event_url(event, format: :json)
end
