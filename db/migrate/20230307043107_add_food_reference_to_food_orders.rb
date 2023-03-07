class AddFoodReferenceToFoodOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :food_orders, :food, null: false, foreign_key: true
  end
end
