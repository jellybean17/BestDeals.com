class Deal < ActiveRecord::Base

  attr_accessible :description, :discount, :expiry_date, :price, :title, :units_available
  has_many :transactions
  has_many :consumers, :through => :transactions
  belongs_to :DealOwner
  has_many :customers
  validates_presence_of :title, :description, :price, :discount, :units_available
  validates :price, :discount, :numericality => true
  validates :units_available, :numericality => { :only_integer => true }
  # validates :expiry_date, :presence => true :if =>  ":expiry_date > DateTime.now()"
end
