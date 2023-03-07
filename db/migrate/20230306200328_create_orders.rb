class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :order_date
      t.integer :price
      t.string :delivery_point

      t.timestamps
    end
  end
end
