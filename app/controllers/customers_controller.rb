class CustomersController < ApplicationController
  def show
  end

  def new
    @customers = Customer.new
  end

  def create
    @deal = Deal.find(params[:deal_id])
    @customer = @deal.customers.build(params[:customer])
    @customer.amount = @deal.price
    @customer.save!
    redirect_to deal_path(@deal)
  end
end
