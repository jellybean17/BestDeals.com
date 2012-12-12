class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.integer :units_available
      t.datetime :expiry_date
      t.decimal :price
      t.integer :discount
      t.references :DealOwner

      t.timestamps
    end
    add_index :deals, :DealOwner_id
  end
end
