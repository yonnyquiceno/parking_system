class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.date :birthdate
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
