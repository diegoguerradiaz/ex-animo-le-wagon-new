class My::FoodOffersController < ApplicationController
  def index
    @food_offers = current_user.food_offers
  end

  def show
    @food_offers = current_user.food_offers
  end
end
