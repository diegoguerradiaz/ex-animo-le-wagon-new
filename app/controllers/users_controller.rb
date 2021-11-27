class UsersController < ApplicationController

  def show
    find_user
  end

  def home_providers
    find_user
    @food_offers = current_user.food_offers
  end

  def home_shelters
    @food_offers = FoodOffer.all
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.update(params_user)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'User deleted.'
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
