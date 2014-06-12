json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :id, :name, :country_id
  json.url hotel_url(hotel, format: :json)
end
