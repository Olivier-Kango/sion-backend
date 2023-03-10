class Order < ApplicationRecord
  belongs_to :food
  belongs_to :user

  validates :user_id, :food_id, presence: { message: 'User_id and Food_id should be not be empty' }
  validates :quantity, presence: true, numericality: true, comparison: { greater_than: 0 }
  validates :delivery_point, presence: true

  def price
    quantity * food.unit_price
  end
end
