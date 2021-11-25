class My::OrdersController < ApplicationController

  # See all the orders from the current User
  def index
    @orders = current_user.orders
  end

  # Finds the order & updates the 'Stage' field of the Order
  def update
    set_order
    @order.update(set_params)
    redirect_to home_providers_path
  end

  def destroy
    set_order
    @order.user = current_user
    @order.destroy
    redirect_to home_providers_path
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_params
    params.require(:order).permit(:stage)
  end
end
