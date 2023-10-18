class CreateStockMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_movements do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :movement_type, comment: 'Entry, Sale, Loss, Gift, etc.'
      t.integer :quantity
      t.string :reason
      t.datetime :created_at
      t.string :note
      t.timestamps
    end

    add_foreign_key :stock_movements, :products, column: :product_id
    add_foreign_key :stock_movements, :users, column: :user_id
  end
end
