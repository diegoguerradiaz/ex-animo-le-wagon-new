class FoodOffer < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :products
end
