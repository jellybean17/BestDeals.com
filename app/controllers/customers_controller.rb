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
     respond_to do |format|
      if @customer.save!
        UserMailer.welcome_email(@customer).deliver!
        format.html { redirect_to(deal_path(@deal), :notice => 'DEAL was successfully created.') }
        format.json { render :json => @deal, :status => :created, :location => @deal }
      else
        format.html { render :action => @deal }
        format.json { render :json => @deal.errors, :status => :unprocessable_entity }
      end
    end
  end
end