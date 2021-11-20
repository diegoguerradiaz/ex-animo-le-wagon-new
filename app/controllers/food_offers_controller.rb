class FoodOffersController < ApplicationController
  def index
    @food_offers = FoodOffer.all
  end

  def new
    @food_offer = FoodOffer.new
  end

  def create
    @food_offer = FoodOffer.new(food_offer_params)
    @food_offer.user = current_user
    # @user = User.find(params[user_id])
    # @food_offer.user_id = @user
    @food_offer.save
    # redirect_to food_offer_path(@food_offer)
  end

  private

  def food_offer_params
    params.require(:food_offer).permit(:category, :product_name, :unit)
  end
end
