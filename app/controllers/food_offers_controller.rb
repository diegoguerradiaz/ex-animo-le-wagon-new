class FoodOffersController < ApplicationController
  def index
    @food_offers = FoodOffer.all
  end

  def new
    @food_offer = FoodOffer.new
  end

  def create
    @user = User.new
    @food_offer = FoodOffer.new(params[:food_offer])
    @food_offer.save
  end

end
