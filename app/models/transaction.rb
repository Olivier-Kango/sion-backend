# transaction.rb
class Transaction < ApplicationRecord
  belongs_to :product
  belongs_to :user
  
  enum movement_type: { sale: 0, donation: 1, loss: 2 }
  
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :movement_type, presence: true

  after_save :update_related_data

  private

  def update_related_data
    case movement_type
    when 'sale'
      update_stock(:sale)
      update_cash_on_sale
      # Add logic for any other relevant updates on sale
    when 'donation'
      update_stock(:donation)
      # Add logic for any other relevant updates on donation
    when 'loss'
      update_stock(:loss)
      # Add logic for any other relevant updates on loss
    # Add other cases for different movement types if needed
    end
  end

  def update_stock(type)
    case type
    when :sale
      product.quantity -= quantity
    when :donation
      product.quantity -= quantity
    when :loss
      product.quantity -= quantity
    end
    product.save
  end

  def update_cash_on_sale
    # Logic for updating cash on sale
    # For example, if cash needs to increase on sale
  end
end
