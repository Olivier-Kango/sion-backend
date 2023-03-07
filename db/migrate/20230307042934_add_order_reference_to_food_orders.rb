class AddOrderReferenceToFoodOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :food_orders, :order, null: false, foreign_key: true
  end
end
