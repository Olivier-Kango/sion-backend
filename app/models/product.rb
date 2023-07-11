class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders

  validates :name, :image, presence: true
  validates :unit_price, presence: true, numericality: true, comparison: { greater_than: 0 }
  validates :category, :image, presence: true
  validates :quantity, presence: true, numericality: true, comparison: { greater_than: 0 }
end
