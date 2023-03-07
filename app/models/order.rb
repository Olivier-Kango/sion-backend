class Order < ApplicationRecord
  belongs_to :user
  has_many :food_orders

  def price
    quantity * food.unit_price
  end
end
