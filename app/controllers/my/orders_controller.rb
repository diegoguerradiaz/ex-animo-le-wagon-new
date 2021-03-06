class My::OrdersController < ApplicationController

  # See all the orders from the current User
  def index
    @orders = current_user.orders
  end

  def update
    set_order
    @order.update(set_params)
    redirect_to home_providers_path(current_user)
  end

  def destroy
    set_order
    @order.user = current_user
    @order.destroy
    if current_user.role == "Provider"
      redirect_to home_providers_path
    else
      redirect_to home_shelters_path
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_params
    params.require(:order).permit(:stage)
  end

end
