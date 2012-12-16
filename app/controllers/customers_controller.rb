class CustomersController < ApplicationController
  def show
  end

  def new
    @customers = Customer.new
  end

  def create
    @deal = Deal.find(params[:deal_id])
    @customer = @deal.customers.create!(params[:customer])
    redirect_to deal_path(@deal)
  end
end
