class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @food_offer = FoodOffer.find(params[:food_offer_id])
    @order.food_offer = @food_offer
    @order.user = current_user
    @order.stage = "Pending Validation"
    if @order.save!
      redirect_to my_orders_path(current_user), notice: 'Order Successful'
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
    @order.stage = "Pending Validation"
    @order.update(order_params)
    redirect_to orders_path(@order), notice: 'Updated'
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:start_order_date, :end_order_date, :stage)
  end
end
