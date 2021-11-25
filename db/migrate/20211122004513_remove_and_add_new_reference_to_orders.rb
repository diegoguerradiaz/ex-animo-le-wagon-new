class RemoveAndAddNewReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :food_offer, null: false, foreign_key: true
  end
end
