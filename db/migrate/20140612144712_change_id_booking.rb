class ChangeIdBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :id, :integer
  end
end
