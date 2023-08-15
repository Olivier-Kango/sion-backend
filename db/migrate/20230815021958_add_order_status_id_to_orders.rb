class AddOrderStatusIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :order_status_id, :integer
  end
end
