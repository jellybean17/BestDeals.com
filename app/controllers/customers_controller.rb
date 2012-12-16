class CustomersController < ApplicationController
  def show
  end

  def new
    @customers = Customer.new
  end

  def create
    @deal = Deal.find(params[:deal_id])
    respond_to do |format|
      if @customer = @deal.customers.create!(params[:customer])
        UserMailer.welcome_email(@deal.customers).deliver!
        format.html { redirect_to(deal_path(@deal), :notice => 'DEAL was successfully created.') }
        format.json { render :json => @deal, :status => :created, :location => @deal }
      else
        format.html { render :action => "show" }
        format.json { render :json => @deal.errors, :status => :unprocessable_entity }
      end
    end
  end
end
