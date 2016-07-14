class CreateParkRecords < ActiveRecord::Migration
  def change
    create_table :park_records do |t|
      t.string :park_record_id
      t.string :integer
      t.integer :vehicle_id
      t.integer :slot_id
      t.datetime :date_details
      t.string :comments
      t.references :vehicle, index: true, foreign_key: true
      t.references :slot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
