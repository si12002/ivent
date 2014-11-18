json.array!(@manages) do |manage|
  json.extract! manage.event, :id , :title
  json.url manage_url(manage, format: :json)
end