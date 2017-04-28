class CreatePaymentHistories < ActiveRecord::Migration
  def change
    create_table :payment_histories do |t|
      t.references :purse, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
