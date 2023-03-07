class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.integer :quantity
      t.integer :price
      t.integer :delivery_time

      t.timestamps
    end
  end
end
