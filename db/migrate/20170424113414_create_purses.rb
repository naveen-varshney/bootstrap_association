class CreatePurses < ActiveRecord::Migration
  def change
    create_table :purses do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :funds

      t.timestamps null: false
    end
  end
end
