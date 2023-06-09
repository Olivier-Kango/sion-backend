class ChangeFoodIdToProductIdInOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :food_id, :product_id
  end
end
