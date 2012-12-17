class AddEmailIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :email_id, :string
  end
end
