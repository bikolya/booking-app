json.array!(@flights) do |flight|
  json.extract! flight, :id, :model, :from_country_id, :to_country_id
  json.url flight_url(flight, format: :json)
end
