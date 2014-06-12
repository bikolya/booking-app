class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string  :name
      t.integer :country_id

      t.timestamps
    end
  end
end
