class RemoveIntegerFromParkRecord < ActiveRecord::Migration
  def change
    remove_column :park_records, :integer, :string
  end
end
