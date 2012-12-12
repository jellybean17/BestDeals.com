class Deal < ActiveRecord::Base
  belongs_to :DealOwner
  attr_accessible :description, :discount, :expiry_date, :price, :title, :units_available
end
