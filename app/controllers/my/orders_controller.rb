class My::OrdersController < ApplicationController
  def index
    @user = User.find(params[:id])
    @orders = current_user.orders
  end
end
