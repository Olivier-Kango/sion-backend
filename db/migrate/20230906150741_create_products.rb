class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.decimal :unit_price, precision: 10, scale: 2
      t.integer :quantity
      t.string :category
      t.decimal :unit_purchase_price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
