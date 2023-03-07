class Order < ApplicationRecord
  belongs_to :user
  has_many :food_orders
end
