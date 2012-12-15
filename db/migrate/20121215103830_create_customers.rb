class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :credit_card_number
      t.decimal :amount
      t.references :deal
      t.timestamps
    end
  end
end
