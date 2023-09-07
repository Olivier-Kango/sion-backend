class AddSubcategoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :subcategory, :string
  end
end
