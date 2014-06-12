json.array!(@delete_id_bookings) do |delete_id_booking|
  json.extract! delete_id_booking, :id, :country_id, :flight_id, :hotel_id
  json.url delete_id_booking_url(delete_id_booking, format: :json)
end
