class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
