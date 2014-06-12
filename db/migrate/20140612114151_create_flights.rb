class CreateFlights < ActiveRecord::Migration
  def change

    create_table :flights do |t|
      t.string :model
      t.integer :from_country_id
      t.integer :to_country_id

      t.timestamps
    end
  end
end
