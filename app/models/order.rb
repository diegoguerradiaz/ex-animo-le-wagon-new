class Order < ApplicationRecord
  belongs_to :users
  belongs_to :food_offers
end
