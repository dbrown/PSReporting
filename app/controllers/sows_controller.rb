class SowsController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @sow = @customer.sows.create(params[:sow])
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @sow = @customer.sows.find(params[:id])
    @sow.destroy
    redirect_to customer_path(@customer)
  end

  def show
    @sow = Sow.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

end
