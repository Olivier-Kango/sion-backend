class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :delivery_point
      t.references :food, null: false, foreign_key: true
      t.references :user, null:false , foreign_key:true

      t.timestamps
    end
  end
end
