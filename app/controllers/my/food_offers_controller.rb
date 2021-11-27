class My::FoodOffersController < ApplicationController

  def index
    @food_offers = current_user.food_offers
  end

  def show
    @food_offers = current_user.food_offers
  end


  def  destroy
    find_offer
    @food_offer.destroy
    redirect_to my_food_offers_path
  end

  private

  def find_offer
    @food_offer = FoodOffer.find(params[:id])
  end
end
