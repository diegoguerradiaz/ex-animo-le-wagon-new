class RenameOffersColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :food_offers, :product_name, :offer_name
    rename_column :food_offers, :unit, :total_unit
  end
end
