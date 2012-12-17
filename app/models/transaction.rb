class Transaction < ActiveRecord::Base
  belongs_to :deal
  belongs_to :consumer
  attr_accessible :amount, :creditcard_number, :date_time
end
