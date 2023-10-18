class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :orders, dependent: :destroy
  has_many :products, through: :orders
  has_many :stock_movements, dependent: :destroy

  validates :email, :name, presence: true
  validates :password, presence: true
  before_save :assign_role

  def admin?
    role == 'admin'
  end

  private

  def assign_role
    self.role = 'regular' if role.nil? or role == ''
  end
end
