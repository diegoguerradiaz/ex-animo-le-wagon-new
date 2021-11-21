class AddReferenceToFoodOffers < ActiveRecord::Migration[6.0]
  def change
      add_reference :food_offers, :products, foreign_key: true
  end
end
