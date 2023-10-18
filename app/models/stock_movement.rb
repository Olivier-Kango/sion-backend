class StockMovement < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :movement_type, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :reason, presence: true
  validates :created_at, presence: true
  validates :note, presence: true
end
