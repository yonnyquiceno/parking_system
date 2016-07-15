class RemoveLocationIdFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :location_id, :string
  end
end
