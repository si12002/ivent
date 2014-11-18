json.array!(@entries) do |entry|
  json.extract! entry.event, :id , :title
  json.url entry_url(entry, format: :json)
end