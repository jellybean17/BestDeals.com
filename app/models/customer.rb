class Customer < ActiveRecord::Base
  attr_accessible :address, :amount, :credit_card_number, :name, :phone_number

  belongs_to :deal

end
