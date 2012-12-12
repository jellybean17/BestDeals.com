class DealsController < ApplicationController
  before_filter :authenticate_deal_owner!, except: [:show, :index] 

  def index
    @deals = Deal.all
    @deal_owner = current_deal_owner
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(params[:deal])
    @deal.DealOwner_id = current_deal_owner.id
    if @deal.save
      redirect_to deals_path
    else
      render "new"
    end
  end

  def edit
    @deal = Deal.find(params[:id])
    render "new"
  end

  def update
     @deal = Deal.find(params[:id])
     @deal.update_attributes(params[:deal])
     redirect_to deals_path
  end

  def destroy
  end

  def apply
    @deal = Deal.find(params[:id])
  end
end
