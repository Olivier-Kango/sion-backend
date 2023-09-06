class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :delivery_point
      t.bigint :product_id, null: false
      t.bigint :user_id, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string :order_type
      t.integer :order_status_id
      t.index :product_id
      t.index :user_id
    end

    add_foreign_key :orders, :products, column: :product_id
    add_foreign_key :orders, :users, column: :user_id
  end
end
