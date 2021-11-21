class PagesController < ApplicationController

  def home
    if current_user.role = "Shelter"
      @food_offers = FoodOffer.all
      render "food_offers/index"
    end
  end

  def about_us
  end

  def contact_us
  end

  def for_providers
  end

  def for_shelters
  end

end
