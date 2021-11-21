class AddFoodOfferToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :food_offers, foreign_key: true
  end
end
