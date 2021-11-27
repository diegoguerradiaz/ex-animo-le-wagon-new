class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :food_offers

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  # has_many :offers
  has_many :orders
  has_one :photo
end
