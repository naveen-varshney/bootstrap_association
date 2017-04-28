class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :country
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :addresses, :user_id
  end
end
