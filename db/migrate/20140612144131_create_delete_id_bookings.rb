class CreateDeleteIdBookings < ActiveRecord::Migration
  def change
    drop_table :bookings
    create_table :bookings do |t|
      t.integer :country_id
      t.integer :flight_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
