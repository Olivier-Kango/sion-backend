class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :user_id, :product_id, presence: { message: 'User_id and Product_id should not be empty' }
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :delivery_point, presence: true

  enum status: { new_order: 'new', processing: 'processing', delivered: 'delivered', paid: 'paid' }

  def price
    quantity * product.unit_price
  end
end
