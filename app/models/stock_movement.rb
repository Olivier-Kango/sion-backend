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
    case movement_type
    when 'Entry'
      product.quantity += quantity
    when 'Sale'
      product.quantity -= quantity
      # when 'Loss'
      #   product.quantity -= quantity
      # when 'Gift'
      #   product.quantity -= quantity
    end

    product.save
  end
end
