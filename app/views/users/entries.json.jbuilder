json.array!(@entries) do |entry|
  json.extract! entry.event, :id, :title, :dtstart, :dtend, :location, :lat, :lng, :summary
end