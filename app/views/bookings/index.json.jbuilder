json.array!(@bookings) do |booking|
  json.extract! booking, :id, :country_id, :flight_id, :hotel_id
  json.url booking_url(booking, format: :json)
end
