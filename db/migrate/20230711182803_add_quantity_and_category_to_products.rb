class AddQuantityAndCategoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :quantity, :integer
    add_column :products, :category, :string
  end
end
