class Customer < ActiveRecord::Base
  attr_accessible :address, :amount, :credit_card_number, :name, :phone_number
  belongs_to :deal
  validates_presence_of :name, :address
  validates :phone_number, :presence => true, :numericality => { :only_integer => true }
  # validates :amount, :presence => true, :numericality => true
  # validates :email, :presence => true, :format => { :with => /[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,4})/ }
end
