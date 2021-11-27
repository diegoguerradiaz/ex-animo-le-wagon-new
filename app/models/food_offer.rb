class FoodOffer < ApplicationRecord
  belongs_to :user
  has_many :orders,  dependent: :delete_all
  has_many :products
end
