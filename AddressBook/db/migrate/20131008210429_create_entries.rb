class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :zip_code
      t.string :favorite_color

      t.timestamps
    end
  end
end
