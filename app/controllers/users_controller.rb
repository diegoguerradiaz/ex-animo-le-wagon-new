class UsersController < ApplicationController

  def show
    find_user
  end

  def home_providers
    find_user
    @orders = @user.orders
  end

  def home_shelters
    @food_offers = FoodOffer.all
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

end
