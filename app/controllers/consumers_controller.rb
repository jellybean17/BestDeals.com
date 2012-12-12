class ConsumersController < ApplicationController
  def new
    @consumer = Consumer.new
  end

  def create
    @consumer = Consumer.new(params[:consumer])
    @consumer.save!
    redirect_to new_transaction_path 
  end
end
