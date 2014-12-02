json.array!(@manages) do |manage|
  json.extract! manage.event, :id , :title, :dtstart, :dtend, :location, :lat, :lng, :summary, :created_at, :updated_at
end

