class Product < ApplicationRecord
  self.primary_key = 'id'

  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  has_many :stock_movements, dependent: :destroy

  validates :name, :image, presence: true
  validates :unit_purchase_price, presence: true, numericality: true, comparison: { greater_than: 0 }
  validates :unit_price, presence: true, numericality: true, comparison: { greater_than: 0 }
  validates :category, :subcategory, :image, presence: true
  validates :quantity, presence: true, numericality: true, comparison: { greater_than: 0 }
end
