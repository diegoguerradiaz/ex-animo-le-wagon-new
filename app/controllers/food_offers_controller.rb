class FoodOffersController < ApplicationController

  def new
    @food_offer = FoodOffer.new
  end

  def create
    @food_offer = FoodOffer.new(food_offer_params)
    @food_offer.user_id = current_user.id

    if @food_offer.save!
      redirect_to my_food_offers_path
    else
      render :new
    end
  end

  def show
    find_offer
    @order = Order.new
  end

  def edit
    find_offer
  end

  def update
    find_offer
    @food_offer.update(food_offer_params)
    redirect_to my_food_offers_path
  end



  private

  def find_offer
    @food_offer = FoodOffer.find(params[:id])
  end

  def food_offer_params
    params.require(:food_offer).permit(:category, :offer_name, :total_unit, :offer_description, :delivery)
  end
end
