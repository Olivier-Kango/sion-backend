class CreateFoodOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :food_orders do |t|

      t.timestamps
    end
  end
end
