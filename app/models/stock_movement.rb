class StockMovement < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :movement_type, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :reason, presence: true
  validates :created_at, presence: true
  validates :note, presence: true

  after_save :update_product_quantity

  private

  def update_product_quantity
    if movement_type == 'Entry'
      product.quantity += quantity
    elsif movement_type == 'Sale'
      product.quantity -= quantity
    elsif movement_type == 'Loss'
      product.quantity -= quantity
    elsif movement_type == 'Gift'
      product.quantity -= quantity
    end

    product.save
  end
end
