class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :location_id
      t.float :location_latitude
      t.float :location_longitude
      t.string :description

      t.timestamps null: false
    end
  end
end
