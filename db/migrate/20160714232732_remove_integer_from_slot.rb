class RemoveIntegerFromSlot < ActiveRecord::Migration
  def change
    remove_column :slots, :integer, :string
  end
end
