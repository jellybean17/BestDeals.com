class Consumer < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number
  has_many :transactions
  has_many :deals, :through => :transactions
end
