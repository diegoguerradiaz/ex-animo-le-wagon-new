class FoodOffersController < ApplicationController

  def new
    @food_offer = FoodOffer.new
  end

  def create
    @food_offer = FoodOffer.new(food_offer_params)
    @food_offer.user_id = current_user.id

    if @food_offer.save!
      redirect_to my_food_offers_path(@food_offer)
    else
      render :new
    end
  end

  def edit
    find_offer
  end

  def update
  find_offer
    @food_offer.update(food_offer_params)
    redirect_to food_offers_path(@food_offer)
  end

  private

  def find_offer
    @food_offer = FoodOffer.find(params[:id])
  end

  def food_offer_params
    params.require(:food_offer).permit(:category, :product_name, :unit)
  end
end
