class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :id
      t.integer :country_id
      t.integer :flight_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
