class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :quantity
      t.string :unit
      t.references :food_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
