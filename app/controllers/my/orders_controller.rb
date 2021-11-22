class My::OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def update
    set_order
    @order.update(set_params)
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
