class RemoveParkRecordIdFromParkRecord < ActiveRecord::Migration
  def change
    remove_column :park_records, :park_record_id, :string
  end
end
