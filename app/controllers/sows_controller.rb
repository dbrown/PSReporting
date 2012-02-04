class SowsController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @sow = @customer.sows.create(params[:sow])
    redirect_to customer_path(@customer)
  end
end
