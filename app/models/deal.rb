class Deal < ActiveRecord::Base
  belongs_to :DealOwner
  attr_accessible :description, :discount, :expiry_date, :price, :title, :units_available
  validates_presence_of :title, :description, :expiry_date, :price, :discount, :units_available
  has_many :transactions
  has_many :consumers, :through => :transactions
  accepts_nested_attributes_for :consumers
end
