class RemoveSlotIdFromSlot < ActiveRecord::Migration
  def change
    remove_column :slots, :slot_id, :string
  end
end
