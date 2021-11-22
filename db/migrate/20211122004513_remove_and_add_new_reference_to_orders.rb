class RemoveAndAddNewReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :food_offers, index: true, foreign_key: true
    add_reference :orders, :food_offer, null: false, foreign_key: true
  end
end
