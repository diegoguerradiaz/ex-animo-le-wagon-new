class CreateFoodOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :food_offers do |t|
      t.string :category
      t.integer :unit
      t.string :product_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
