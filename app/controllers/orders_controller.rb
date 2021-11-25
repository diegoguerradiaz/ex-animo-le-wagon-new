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

  private

  def order_params
    params.require(:order).permit(:start_order_date, :end_order_date, :stage)
  end
end
