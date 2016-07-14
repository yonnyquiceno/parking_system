class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.integer :slot_id
      t.string :location_id
      t.string :integer
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
