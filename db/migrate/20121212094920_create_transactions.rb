class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :date_time
      t.integer :creditcard_number
      t.decimal :amount
      t.references :deal
      t.references :consumer

      t.timestamps
    end
    add_index :transactions, :deal_id
    add_index :transactions, :consumer_id
  end
end
