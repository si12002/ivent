json.extract! @event, :id, :title, :dtstart, :dtend, :location, :lat, :lng, :summary, :created_at, :updated_at

json.entry @event.entries do |entry|
	json.user entry.user.name
end