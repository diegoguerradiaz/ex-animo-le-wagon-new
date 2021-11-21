class My::FoodOffersController < ApplicationController
  def index
    @food_offers = current_user.food_offers
    @products = @food_offers.products
  end
end
