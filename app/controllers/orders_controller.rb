class OrdersController < ApplicationController

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def create
    # @offer = Offer.find(params[:offer_id])
    @order = Order.new(order_params)
    # @order.offer = @offer
    @order.user = current_user

    if @order.save!
      redirect_to orders_path, notice: 'Order Successful'
    else
      render :new
    end

  end

  def edit
    set_order
  end

  def destroy
    set_order
  end

  def update
    set_order
    @order.update(order_params)
    redirect_to orders_path(@order), notice: 'Updated'
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:start_order_date, :end_order_date)
  end
end
