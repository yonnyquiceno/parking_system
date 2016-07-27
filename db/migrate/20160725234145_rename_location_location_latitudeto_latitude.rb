class RenameLocationLocationLatitudetoLatitude < ActiveRecord::Migration
  def change
    rename_column :locations, :location_latitude, :latitude
  end
end
