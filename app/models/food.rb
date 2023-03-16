class Food < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders

  validates :name, :image, presence: true
  validates :unit_price, presence: true, numericality: true, comparison: { greater_than: 0 }
end
