class AddColumnToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :food_offers, :offer_description, :text
    add_column :food_offers, :delivery, :boolean
  end
end
